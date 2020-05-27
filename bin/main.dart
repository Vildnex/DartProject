// pub global activate protoc_plugin
import 'system.dart';

//julemand101@archlinux.dk
void main(List<String> arguments) {
  for (var i = 0; i < 3; ++i) {
    var port = 5000;
    var sys = System(port, port + 5 + i, i + 1);
    sys.init();
  }
}
