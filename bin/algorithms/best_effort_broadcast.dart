import '../../build/gen/data.pb.dart';
import '../interface/alg_interface.dart';
import '../system.dart';

class BestEffortBroadcast extends AlgInterface {
  final System _sys;

  BestEffortBroadcast(this._sys);

  @override
  bool handle(Message msg) {
//  @override
//  Future<bool> handle(Message msg) async {
    switch (msg.type) {
      case Message_Type.BEB_BROADCAST:
        {
          _sys.processes.forEach((process) {
            var message = Message();
            message.type = Message_Type.PL_SEND;
            message.plSend = PlSend();
            message.plSend.destination = process;
            message.plSend.message = msg.bebBroadcast.message;
            message.abstractionId = 'beb';
            message.systemId = _sys.systemID;
            _sys.emitMessage(message);
          });
        }
        return true;
      case Message_Type.PL_DELIVER:
        {
          if (msg.plDeliver.message.type == Message_Type.NETWORK_MESSAGE) {
            return false;
          }
          var message = Message();
          message.type = Message_Type.BEB_DELIVER;
          message.bebDeliver = BebDeliver();
          message.bebDeliver.message = Message();
          message.bebDeliver.message = msg.plDeliver.message;
          message.bebDeliver.sender = msg.plDeliver.sender;
          _sys.emitMessage(message);
        }
//        return Future.value(true);
        return true;
    }
//    return Future.value(false);
    return false;
  }
}
