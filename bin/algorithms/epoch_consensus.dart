import 'package:tuple/tuple.dart';

import '../../build/gen/data.pb.dart';
import '../interface/alg_interface.dart';
import '../system.dart';

class EpochConsensus extends AlgInterface {
  Tuple2<int, Value> _state;
  final System _sys;

  bool _halted = false;
  Value _temp = Value();
  int _accepted = 0;
  final Map<int, Tuple2<int, Value>> _states = {};
  final int _timeStamp;

  EpochConsensus(this._sys, this._timeStamp, this._state) {
    _temp.defined = false;
  }

//  @override
//  bool handle(Message msg) {
  @override
  Future<bool> handle(Message msg) async {
    if (_halted) {
      return false;
//      return Future.value(false);
    }
    switch (msg.type) {
      case Message_Type.EP_PROPOSE:
        {
          print('Ep propose!');
          _temp = msg.epPropose.value;
          var message = Message();
          message.type = Message_Type.BEB_BROADCAST;
          message.bebBroadcast = BebBroadcast();
          message.bebBroadcast.message = Message();
          message.bebBroadcast.message.type = Message_Type.EP_READ_;
          print('Sent to bebBroadcast!');
          _sys.emitMessage(message);
        }
        return true;
      case Message_Type.BEB_DELIVER:
        {
          switch (msg.bebBroadcast.message.type) {
            case Message_Type.EP_READ_:
              {
                print('Ep read! from: ' + msg.bebDeliver.sender.port.toString());
                var message = Message();
                message.type = Message_Type.PL_SEND;
                message.plSend = PlSend();
                message.plSend.destination = msg.bebDeliver.sender;
                message.plSend.message = Message();
                message.plSend.message.type = Message_Type.EP_STATE_;
                message.plSend.message.epState = EpState_();
                message.plSend.message.epState.valueTimestamp = _state.item1;
                message.plSend.message.epState.value = _state.item2;
                message.abstractionId = 'ep';
                message.systemId = _sys.systemID;
                _sys.emitMessage(message);
              }
//              return Future.value(true);
              return true;
            case Message_Type.EP_WRITE_:
              {
                print('Ep write!');
                _state = Tuple2<int, Value>(_timeStamp, msg.bebDeliver.message.epWrite.value);

                var message = Message();
                message.type = Message_Type.PL_SEND;
                message.plSend = PlSend();
                message.plSend.destination = msg.bebDeliver.sender;
                message.plSend.message = Message();
                message.plSend.message.type = Message_Type.EP_ACCEPT_;
                message.plSend.message.abstractionId = 'ep';
                message.abstractionId = 'ep';
                message.systemId = _sys.systemID;

                print('sent ep write to: ' + msg.bebDeliver.sender.port.toString());
                _sys.emitMessage(message);
              }
//              return Future.value(true);
              return true;
            case Message_Type.EP_DECIDED_:
              {
                print('Ep decide!');
                var message = Message();
                message.type = Message_Type.EP_DECIDE;
                message.epDecide = EpDecide();
                message.epDecide.ets = _timeStamp;
                message.epDecide.value = msg.bebDeliver.message.epDecided.value;
                _sys.emitMessage(message);
              }
//              return Future.value(true);
              return true;
          }
        }
//        return Future.value(true);
        return true;
      case Message_Type.PL_DELIVER:
        {
          switch (msg.plDeliver.message.type) {
            case Message_Type.EP_STATE_:
              {
                print('Ep state!');
                var state_port = msg.plDeliver.sender.port;
                var ts = msg.plDeliver.message.epState.valueTimestamp;
                var val = msg.plDeliver.message.epState.value;
                _states[state_port] = Tuple2<int, Value>(ts, val);

                print('states size: ' + _states.length.toString());
                if (_states.length > _sys.processes.length / 2) {
                  var key = -1;
                  var maxTs = 0;
                  _states.forEach((_key, _value) {
                    if (_value.item1 > maxTs) {
                      maxTs = _value.item1;
                      key = _key;
                    }
                  });
                  if (_states[key].item2.defined) {
                    _temp = _states[key].item2;
                  }
                  _states.clear();
                  print('v: ' + _temp.v.toString());
                  var message = Message();
                  message.type = Message_Type.BEB_BROADCAST;
                  message.bebBroadcast = BebBroadcast();
                  message.bebBroadcast.message = Message();
                  message.bebBroadcast.message.type = Message_Type.EP_WRITE_;
                  message.bebBroadcast.message.epWrite = EpWrite_();
                  message.bebBroadcast.message.epWrite.value = _temp;

                  _sys.emitMessage(message);
                }
              }
//              return Future.value(true);
              return true;
            case Message_Type.EP_ACCEPT_:
              {
                print('Ep accepted!');
                _accepted += 1;
                if (_accepted > _sys.processes.length / 2) {
                  _accepted = 0;

                  var message = Message();
                  message.type = Message_Type.BEB_BROADCAST;
                  message.bebBroadcast = BebBroadcast();
                  message.bebBroadcast.message = Message();
                  message.bebBroadcast.message.type = Message_Type.EP_DECIDED_;
                  message.bebBroadcast.message.epDecided = EpDecided_();
                  message.bebBroadcast.message.epDecided.value = _temp;

                  _sys.emitMessage(message);
                }
              }
//              return Future.value(true);
              return true;
          }
        }
//        return Future.value(true);
        return false;
      case Message_Type.EP_ABORT:
        {
          print('Ep aborted!');
          _halted = true;

          var message = Message();
          message.type = Message_Type.EP_ABORTED;
          message.epAborted = EpAborted();

          message.epAborted.ets = _timeStamp;
          message.epAborted.valueTimestamp = _state.item1;
          message.epAborted.value = _state.item2;

          _sys.emitMessage(message);
        }
//        return Future.value(true);
              return true;
    }
//    return Future.value(false);
    return false;
  }
}
