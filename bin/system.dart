import 'dart:io';
import 'dart:async';
import 'dart:typed_data';
import 'package:event_bus/event_bus.dart';

import '../build/gen/data.pb.dart';

import 'algorithms/best_effort_broadcast.dart';
import 'algorithms/epoch_change.dart';
import 'algorithms/epoch_consensus.dart';
import 'algorithms/eventual_lead_detector.dart';
import 'algorithms/eventually_perfect_failure_detector.dart';
import 'algorithms/uniform_consensus.dart';

import 'interface/alg_interface.dart';
import 'perfect_link.dart';

import 'package:tuple/tuple.dart';

class System {
  int hub_port;
  int port;
  int index;

  final String _ip = '127.0.0.1';

  String get ip => _ip;

  final String _systemID = 'system1';

  String get systemID => _systemID;

  final List<ProcessId> _processes = <ProcessId>[];

  List<ProcessId> get processes => _processes;

  final String _absId = 'app';

  final EventBus _eventBus = EventBus();

  final _algorithms = <AlgInterface>[];

  System(this.hub_port, this.port, this.index);

  ProcessId self() {
    return _processes.firstWhere((process) => process.port == port);
  }

  void init() {
    _receiveMessage();
//    var pf = await PerfectLike.connect(this, _ip, port);
    PerfectLike.connect(this, _ip, port).then((PerfectLike pl) {
      _algorithms.add(pl);
    });
    Socket.connect(_ip, hub_port).then((socket) {
      print('connected');

      var appReg = AppRegistration();
      appReg.index = index;
      appReg.owner = 'vlad';

      var appRegMsg = Message();
      appRegMsg.type = Message_Type.APP_REGISTRATION;
      appRegMsg.appRegistration = appReg;
      appRegMsg.abstractionId = _absId;
      appRegMsg.messageUuid = 'appregistration';
      appRegMsg.systemId = _systemID;

      var networkMsg = NetworkMessage();
      networkMsg.message = appRegMsg;
      networkMsg.senderHost = _ip;
      networkMsg.senderListeningPort = port;

      var toSend = Message();
      toSend.networkMessage = networkMsg;
      toSend.type = Message_Type.NETWORK_MESSAGE;

      var message = Uint8List(4);
      var byteData = ByteData.view(message.buffer);

      var buffer = toSend.writeToBuffer();
      byteData.setUint32(0, buffer.lengthInBytes);

      socket.add(message);
      socket.add(buffer);
      socket.flush();
//      socket.close();
    });

    //    var socket = await Socket.connect(_ip, hub_port);
  }

  void emitMessage(Message msg) {
    _eventBus.fire(msg);
  }

  void _receiveMessage() {
    _eventBus.on<Message>().listen((Message msg) {
      var used = false;
      if (msg.type == Message_Type.PL_DELIVER) {
        if (msg.plDeliver.message.type == Message_Type.APP_PROPOSE) {
          print('Hello');
          print('System: ' + index.toString() + ' has the following processids');
          msg.plDeliver.message.appPropose.processes.forEach((process) {
            var host = 'HOST: ' + process.host;
            var port = 'PORT: ' + process.port.toString();
            var owner = 'OWNER: ' + process.owner;
            var index = 'INDEX: ' + process.index.toString();
            var rank = 'RANK: ' + process.rank.toString();
            var final_msg = host + ' | ' + port + ' | ' + owner + ' | ' + index + ' | ' + rank;
            print(final_msg);
            _processes.add(process);
          });
          begin();
          var message = Message();
          message.type = Message_Type.UC_PROPOSE;
          message.ucPropose = UcPropose();
          message.ucPropose.value = Value();
          message.ucPropose.value.defined = true;
          message.ucPropose.value.v = msg.plDeliver.message.appPropose.value.v;

          emitMessage(message);
          used = true;
        }
      }

      if (msg.type == Message_Type.UC_DECIDE) {
        print('UcDecided: ' + msg.ucDecide.value.v.toString());
//        var socket = await Socket.connect(ip, hub_port);
        Socket.connect(ip, hub_port).then((socket) {
          var appDecide = AppDecide();
          appDecide.value = msg.ucDecide.value;

          var appDecideMsg = Message();
          appDecideMsg.type = Message_Type.APP_DECIDE;
          appDecideMsg.appDecide = appDecide;
          appDecideMsg.abstractionId = _absId;
          appDecideMsg.systemId = _systemID;

          var networkMsg = NetworkMessage();
          networkMsg.message = appDecideMsg;
          networkMsg.senderHost = ip;
          networkMsg.senderListeningPort = port;

          var toSend = Message();
          toSend.networkMessage = networkMsg;
          toSend.type = Message_Type.NETWORK_MESSAGE;

          var message = Uint8List(4);
          var byteData = ByteData.view(message.buffer);

          var buffer = toSend.writeToBuffer();

          byteData.setUint32(0, buffer.lengthInBytes);

          socket.add(message);
          socket.add(buffer);
          socket.flush();
          socket.close();
          used = true;
        });
      }

      if (used) {
        return;
      }
      for (var alg in _algorithms) {
        if (alg.handle(msg)) {
          return;
        }
      }
//      TODO: CHECK IT LATER
//      emitMessage(msg);
    });
  }

  void begin() {
//    _algorithms.add(BestEffortBroadcast(this));
    _algorithms.add(EventuallyPerfectFailureDetector(this));
    _algorithms.add(EventualLeadDetector(this));
    _algorithms.add(EpochChange(this));
    _algorithms.add(UniformConsensus(this));
    _algorithms.add(BestEffortBroadcast(this));
  }

  void beginNewEpoch(int timeStamp, Tuple2<int, Value> state) {
    _algorithms.insert(0, EpochConsensus(this, timeStamp, state));
  }
}
