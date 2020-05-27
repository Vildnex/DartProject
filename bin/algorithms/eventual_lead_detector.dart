import 'dart:math';

import '../../build/gen/data.pb.dart';
import '../interface/alg_interface.dart';
import '../system.dart';

class EventualLeadDetector extends AlgInterface {
  System _sys;

  ProcessId _leader;
  final List<ProcessId> _suspected = <ProcessId>[];

  EventualLeadDetector(this._sys) {
    checkAndSetLeader();
  }

  @override
  bool handle(Message msg) {
//  @override
//  Future<bool> handle(Message msg) async {
    switch (msg.type) {
      case Message_Type.EPFD_SUSPECT:
        {
          _suspected.add(msg.epfdSuspect.process);
          checkAndSetLeader();
        }
        return true;
      case Message_Type.EPFD_RESTORE:
        {
          remove(_suspected, msg.epfdSuspect.process);
          checkAndSetLeader();
        }
        return true;
    }
    return false;
  }

  void checkAndSetLeader() {
    var leader = ProcessId();
    var maxRank = 0;
    _sys.processes.forEach((process) {
      if (!contains(_suspected, process)) {
        if (process.rank > maxRank) {
          leader = process;
          maxRank = process.rank;
        }
      }
    });
    if (_leader?.port != leader?.port) {
      _leader = leader;
      var message = Message();
      message.eldTrust = EldTrust();
      message.type = Message_Type.ELD_TRUST;
      message.eldTrust.process = _leader;
      print('Trust process: ' + _leader.port.toString());
      _sys.emitMessage(message);
    }
  }

  bool contains(List<ProcessId> list, ProcessId elem) => list.any((e) => e.port == elem.port);

  void remove(List<ProcessId> list, ProcessId elem) => list.removeWhere((e) => e.port == elem.port);
}
