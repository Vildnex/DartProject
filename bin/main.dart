// pub global activate protoc_plugin
import 'system.dart';

//julemand101@archlinux.dk
void main(List<String> arguments) async {
  for (var i = 0; i < 3; ++i) {
    var port = 5000;
    var sys = System(5000, port + 5 + i, i + 1);
    await sys.init();
  }
}
