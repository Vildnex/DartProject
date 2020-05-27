import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import '../build/gen/data.pb.dart';
import 'interface/alg_interface.dart';
import 'system.dart';

class PerfectLike extends AlgInterface {
  final ServerSocket _server;
  final System _sys;

  static Future<PerfectLike> connect(System sys, String ip, int port) async =>
      PerfectLike._(sys, await ServerSocket.bind(ip, port).catchError((err) => print(err)));

  PerfectLike._(this._sys, this._server) {
    print('connect to server');
    _server.listen((socket) {
      socket.listen((List<int> data) {
        print('RECEIVE DATA');
        var msg = Message();
        msg.mergeFromBuffer(data.sublist(4));

        if (msg.networkMessage.message.type == Message_Type.EPFD_HEARTBEAT_REQUEST) {
          var d = 5;
        }
        var m = Message();
        m.type = Message_Type.PL_DELIVER;

        if (msg.networkMessage.message.type == Message_Type.APP_PROPOSE) {
          print('RECEIVED app propose');
        }
        var plDeliver = PlDeliver();

//          plDeliver.message = Message();
        plDeliver.message = msg.networkMessage.message;

        m.abstractionId = msg.networkMessage.message.abstractionId;
        m.plDeliver = plDeliver;

//          TODO: CHECK IT LATER
        for (var process in _sys.processes) {
          if (process.port == msg.networkMessage.senderListeningPort) {
            m.plDeliver.sender = process;
          }
        }
        _sys.emitMessage(m);
      }, onDone: () {
        print('done');
      });
      socket.flush();
      socket.close();
    }, onError: (err) => print(err));
  }

  @override
  Future<bool> handle(Message msg) async {
    if (msg.type == Message_Type.PL_SEND) {
      var ip = _server.address.host;
      var port = _server.port;
      var receiverPort = msg.plSend.destination.port;
      print('PL_SEND');
      final _socket = await Socket.connect(ip, receiverPort);
      print('CONNECTED');

      try {
        print('SUCCESS');
        var networkMsg = NetworkMessage();
        networkMsg.senderHost = ip;
        networkMsg.senderListeningPort = port;
        networkMsg.message = Message();
        networkMsg.message.mergeFromMessage(msg.plSend.message);

        var toSend = Message();
        toSend.type = Message_Type.NETWORK_MESSAGE;
        toSend.abstractionId = msg.abstractionId;
        toSend.systemId = msg.systemId;
        toSend.networkMessage = networkMsg;

        var message = Uint8List(4);
        var byteData = ByteData.view(message.buffer);
        var uint8 = toSend.writeToBuffer();

        byteData.setUint32(0, uint8.lengthInBytes);

        _socket.add(message);
        _socket.add(uint8);
        await _socket.flush();
      } catch (e) {
        print('ERR: ' + e.toString());
        return true;
      } finally {
        await _socket.close();
      }
    }
    return false;
  }
}
