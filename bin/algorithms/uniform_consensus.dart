import 'package:tuple/tuple.dart';

import '../../build/gen/data.pb.dart';
import '../interface/alg_interface.dart';
import '../system.dart';

class UniformConsensus extends AlgInterface {
  final System _sys;
  ProcessId _leader;
  bool _decided = false;
  bool _proposed = false;
  Value _val = Value();
  Tuple2<int, ProcessId> _etsLeadPair;
  Tuple2<int, ProcessId> _newTsLeader;

  UniformConsensus(this._sys) {
    _leader = _sys.processes.first;
    _val.defined = false;
    _etsLeadPair = Tuple2<int, ProcessId>(0, _leader);
    _newTsLeader = Tuple2<int, ProcessId>(0, null);

    _sys.beginNewEpoch(0, Tuple2<int, Value>(0, _val));
  }

//  @override
//  Future<bool> handle(Message msg) async {
  @override
  bool handle(Message msg) {
    switch (msg.type) {
      case Message_Type.UC_PROPOSE:
        {
          _val = msg.ucPropose.value;
          print('App proposed: ' + _val.v.toString());
          checkIfEmit();
        }
        return true;
      case Message_Type.EC_START_EPOCH:
        {
          print('Start epoch!!!');
          _newTsLeader = Tuple2<int, ProcessId>(msg.ecStartEpoch.newTimestamp, msg.ecStartEpoch.newLeader);
          var message = Message();
          message.type = Message_Type.EP_ABORT;
          _sys.emitMessage(message);
        }
        return true;
      case Message_Type.EP_ABORTED:
        {
          if (_etsLeadPair.item1 == msg.epAborted.ets) {
            _etsLeadPair = Tuple2<int, ProcessId>(_newTsLeader.item1, _newTsLeader.item2);
            _proposed = false;
            print('Started new epoch!');
            var state = Tuple2<int, Value>(msg.epAborted.valueTimestamp, msg.epAborted.value);
            _sys.beginNewEpoch(_etsLeadPair.item1, state);
            checkIfEmit();
          }
        }
//        return Future.value(true);
        return true;
      case Message_Type.EP_DECIDE:
        {
          print('ep decide!');
          if (msg.epDecide.ets == _etsLeadPair.item1 && !_decided) {
            _decided = true;

            var message = Message();
            message.type = Message_Type.UC_DECIDE;
            message.ucDecide = UcDecide();
            message.ucDecide.value = msg.epDecide.value;

            _sys.emitMessage(message);
          }
        }
        return true;
    }
    return false;
  }

  void checkIfEmit() {
    if (_etsLeadPair.item2.port == _sys.self().port && _val.defined && !_proposed) {
      _proposed = true;
      print('ep propose');
      var message = Message();
      message.type = Message_Type.EP_PROPOSE;
      message.epPropose = EpPropose();
      message.epPropose.value = _val;

      _sys.emitMessage(message);
    }
  }
}
