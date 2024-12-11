import 'package:codelab2/app/modules/connection/views/no_connection_view.dart';
import 'package:codelab2/app/modules/get_connect/views/get_connect_view.dart';
import 'package:codelab2/app/modules/home/views/home_view.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class ConnectionController extends GetxController {
  final Connectivity _connectivity = Connectivity();

  @override
  void onInit() {
    super.onInit();
    _connectivity.onConnectivityChanged.listen((connectivityResults) {
      _updateConnectionStatus(connectivityResults.first);
    });
  }

  void _updateConnectionStatus(ConnectivityResult connectivityResult) {
    if(connectivityResult == ConnectivityResult.none) {
      Get.offAll( () => const NoConnectionView());
    } else {
      if(Get.currentRoute == '/NoConnectionView') {
        Get.offAll(() => const GetConnectView());
      }
    }
  }
}