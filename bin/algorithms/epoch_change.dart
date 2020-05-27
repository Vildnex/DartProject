import '../../build/gen/data.pb.dart';
import '../interface/alg_interface.dart';
import '../system.dart';

class EpochChange extends AlgInterface {
  final System _sys;
  final int N = 6;
  ProcessId _trusted;
  int _lastTs = 0;
  int _ts;

  EpochChange(this._sys) {
    _trusted = _sys.processes.first;
    _ts = _sys.self().rank;
  }

  @override
  bool handle(Message msg) {
//  @override
//  Future<bool> handle(Message msg) async {
    switch (msg.type) {
      case Message_Type.ELD_TRUST:
        {
          _trusted = msg.eldTrust.process;
          if (_trusted.port == _sys.self().port) {
            _ts += N;
            var message = Message();
            message.type = Message_Type.BEB_BROADCAST;
            message.bebBroadcast = BebBroadcast();
            message.bebBroadcast.message = Message();
            message.bebBroadcast.message.type = Message_Type.EC_NEW_EPOCH_;
            message.bebBroadcast.message.ecNewEpoch = EcNewEpoch_();
            message.bebBroadcast.message.ecNewEpoch.timestamp = _ts;
            message.bebBroadcast.message.abstractionId = 'ec';
            message.bebBroadcast.message.systemId = _sys.systemID;

            _sys.emitMessage(message);
          }
        }
        return true;
      case Message_Type.BEB_DELIVER:
        {
          var ok = 0;
          if (msg.bebDeliver.message.type == Message_Type.EC_NEW_EPOCH_) {
            var newTs = msg.bebDeliver.message.ecNewEpoch.timestamp;
            if (msg.bebDeliver.sender.port == _trusted.port && newTs > _lastTs) {
              _lastTs = newTs;

              var message = Message();
              message.type = Message_Type.EC_START_EPOCH;
              message.ecStartEpoch = EcStartEpoch();
              message.ecStartEpoch.newTimestamp = newTs;
              message.ecStartEpoch.newLeader = _trusted;

              _sys.emitMessage(message);
            } else {
              var message = Message();
              message.type = Message_Type.PL_SEND;
              message.plSend = PlSend();
              message.plSend.destination = msg.bebDeliver.sender;
              message.plSend.message = Message();
              message.plSend.message.type = Message_Type.EC_NACK_;
              message.abstractionId = 'ec';
              message.systemId = _sys.systemID;
              print('Nack!');
              _sys.emitMessage(message);
            }
          }
        }
//        return Future.value(true);
        return true;
      case Message_Type.PL_DELIVER:
        {
          var ki = 0;
          if (msg.plDeliver.message.type == Message_Type.EC_NACK_ && _trusted.port == _sys.self().port) {
            _ts += _sys.processes.length;
            var message = Message();
            message.type = Message_Type.BEB_BROADCAST;
            message.bebBroadcast = BebBroadcast();
            message.bebBroadcast.message = Message();
            message.bebBroadcast.message.type = Message_Type.EC_NEW_EPOCH_;
            message.bebBroadcast.message.ecNewEpoch = EcNewEpoch_();
            message.bebBroadcast.message.ecNewEpoch.timestamp = _ts;
            message.bebBroadcast.message.abstractionId = 'ec';
            message.bebBroadcast.message.systemId = _sys.systemID;

            _sys.emitMessage(message);
            print('EcNewEpoch!');
          }
        }
//        return Future.value(true);
        return true;
    }
//    return Future.value(false );
    return false;
  }
}
