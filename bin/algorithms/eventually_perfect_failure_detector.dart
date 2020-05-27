import 'dart:async';
import 'dart:math';

import '../../build/gen/data.pb.dart';
import '../interface/alg_interface.dart';
import '../system.dart';

class EventuallyPerfectFailureDetector extends AlgInterface {
  final System _sys;
  final int DELTA = 100;

  List<ProcessId> _suspected = <ProcessId>[];
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
          _suspected.forEach((process) {
            if (_aliveProcesses.contains(process)) {
              _delay += DELTA;
              print('increase delay with: ' + _delay.toString());
//              return Future.value(false);
              return;
            }
          });
          for (var process in _sys.processes) {
            if (process.port == _sys.self().port) {
              continue;
            }
            if (!_aliveProcesses.contains(process) && !_suspected.contains(process)) {
              _suspected.add(process);
              var message = Message();
              message.type = Message_Type.EPFD_SUSPECT;
              message.epfdSuspect = EpfdSuspect();
              message.epfdSuspect.process = process;
              _sys.emitMessage(message);
            } else if (_aliveProcesses.contains(process) && _suspected.contains(process)) {
              _suspected.remove(process);

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
//    return Future.value(false);
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
}
