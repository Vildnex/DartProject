import '../../build/gen/data.pb.dart';

abstract class AlgInterface {
//  Future<bool> handle(Message msg);
  bool handle(Message msg);
}
