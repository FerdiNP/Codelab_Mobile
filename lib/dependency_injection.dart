import 'package:codelab2/app/modules/connection/bindings/ConnectionBinding.dart';

class DependencyInjection {
  static void init() {
    ConnectionBinding().dependencies();
  }
}