import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import '../build/gen/data.pb.dart';
import 'interface/alg_interface.dart';
import 'system.dart';

class PerfectLike extends AlgInterface {
  String ip;
  int port;
  System sys;

  PerfectLike._(this.sys, this.ip, this.port);

//    ServerSocket.bind(ip, port).then((server) {
//      print('connect to server');
//      server.listen((Socket socket) {
//        socket.listen((List<int> data) {
//          print('RECEIVE DATA');
//          var msg = Message();
//          msg.mergeFromBuffer(data.sublist(4));
//
//          if (msg.networkMessage.message.type == Message_Type.EPFD_HEARTBEAT_REQUEST) {
//            var d = 5;
//          }
//          var m = Message();
//          m.type = Message_Type.PL_DELIVER;
//
//          if (msg.networkMessage.message.type == Message_Type.APP_PROPOSE) {
//            print('RECEIVED app propose');
//          }
//          var plDeliver = PlDeliver();
//
////          plDeliver.message = Message();
//          plDeliver.message = msg.networkMessage.message;
//
//          m.abstractionId = msg.networkMessage.message.abstractionId;
//          m.plDeliver = plDeliver;
//
////          TODO: CHECK IT LATER
////          var d = msg.plDeliver.sender.port;
////          sys.processes.forEach((process) {
//          for (var process in sys.processes) {
//            if (process.port == msg.networkMessage.senderListeningPort) {
//              m.plDeliver.sender = process;
//            }
//          }
//          sys.emitMessage(m);
//        }, onDone: () {
//          print('done');
//        });
//        socket.flush();
//        socket.close();
//      });
//    }, onError: (err) => print(err));
//  }

  static Future<PerfectLike> connect(System sys, String ip, int port) async {
    var server = await ServerSocket.bind(ip, port);
    print('connect to server');
    server.listen((Socket socket) {
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

        plDeliver.message = msg.networkMessage.message;
        m.abstractionId = msg.networkMessage.message.abstractionId;
        m.plDeliver = plDeliver;

        for (var process in sys.processes) {
          if (process.port == msg.networkMessage.senderListeningPort) {
            m.plDeliver.sender = process;
          }
        }
        sys.emitMessage(m);
      }, onDone: () {
        print('done');
      });
      socket.flush();
      socket.close();
    });
    return PerfectLike._(sys, ip, port);
  }

  @override
  Future<bool> handle(Message msg) async {
    if (msg.type == Message_Type.PL_SEND) {
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

        byteData.setUint32(0, 0);
        byteData.setUint32(0, 0);
        byteData.setUint32(0, 0);
        byteData.setUint32(0, uint8.lengthInBytes);

        _socket.add(message);
        _socket.add(uint8);
        await _socket.flush();

//        return Future.value(true);
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
