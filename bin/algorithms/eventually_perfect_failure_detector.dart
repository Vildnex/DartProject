import 'dart:async';

import '../../build/gen/data.pb.dart';
import '../interface/alg_interface.dart';
import '../system.dart';

class EventuallyPerfectFailureDetector extends AlgInterface {
  final System _sys;
  final int DELTA = 100;

  final List<ProcessId> _suspected = <ProcessId>[];
  List<ProcessId> _aliveProcesses = <ProcessId>[];
  int _delay;

  EventuallyPerfectFailureDetector(this._sys) {
    _delay = DELTA;
    delay(_delay);
    _aliveProcesses = _sys.processes;
  }

//  @override
//  bool handle(Message msg) {
  @override
  Future<bool> handle(Message msg) async {
    switch (msg.type) {
      case Message_Type.EPFD_TIMEOUT:
        {
          for (var process in _suspected) {
            if (contains(_aliveProcesses, process)) {
              _delay += DELTA;
              print('Increased delay to: ' + _delay.toString());
              break;
            }
          }
          for (var process in _sys.processes) {
            if (process.port == _sys.self().port) {
              continue;
            }
            var f1 = !contains(_aliveProcesses, process);
            var f2 = !contains(_suspected, process);

            var f_1 = contains(_aliveProcesses, process);
            var f_2 = contains(_suspected, process);
            var kk = 0;
            if (f1 && f2) {
              _suspected.add(process);
              var message = Message();
              message.type = Message_Type.EPFD_SUSPECT;
              message.epfdSuspect = EpfdSuspect();
              message.epfdSuspect.process = process;
              _sys.emitMessage(message);
            } else if (f_1 && f_2) {
              remove(_suspected, process);

              var message = Message();
              message.type = Message_Type.EPFD_RESTORE;
              message.epfdSuspect = EpfdSuspect();
              message.epfdSuspect.process = process;
              _sys.emitMessage(message);
            }
            var message = Message();
            message.type = Message_Type.PL_SEND;
            message.plSend = PlSend();
            message.plSend.destination = process;
            message.plSend.message = Message();
            message.plSend.message.type = Message_Type.EPFD_HEARTBEAT_REQUEST;
            message.abstractionId = 'epdf';
            message.systemId = _sys.systemID;
            _sys.emitMessage(message);
          }
          _aliveProcesses.clear();
          delay(_delay);
        }
//        return Future.value(true);
        return true;
      case Message_Type.PL_DELIVER:
        {
          if (msg.plDeliver.message.type == Message_Type.EPFD_HEARTBEAT_REQUEST) {
            var message = Message();
            message.type = Message_Type.PL_SEND;
            message.plSend = PlSend();
            message.plSend.destination = msg.plDeliver.sender;

            var d = _sys.processes.length;
            message.plSend.message = Message();
            message.plSend.message.type = Message_Type.EPFD_HEARTBEAT_REPLY;
            message.abstractionId = 'epfd';
            message.systemId = _sys.systemID;
            _sys.emitMessage(message);

//            return Future.value(true);
            return true;
          } else if (msg.plDeliver.message.type == Message_Type.EPFD_HEARTBEAT_REPLY) {
            _aliveProcesses.add(msg.plDeliver.sender);
            return true;
          }
        }
    }
    return false;
  }

  Timer delay(int delay) {
    var dl = Duration(milliseconds: delay);
    return Timer(dl, () {
      var message = Message();
      message.type = Message_Type.EPFD_TIMEOUT;
      _sys.emitMessage(message);
    });
  }

  bool contains(List<ProcessId> list, ProcessId elem) {
    for (var e in list) {
      if (e.port == elem.port) {
        return true;
      }
    }
    return false;
  }

  void remove(List<ProcessId> list, ProcessId elem) {
    var index = -1;
    for (var i = 0; i < list.length; ++i) {
      if (list[i].port == elem.port) {
        index = i;
        break;
      }
    }
    if (index != -1) {
      list.removeAt(index);
    }
  }
}
