import 'package:codelabmodul3/app/modules/login_register/views/login_page.dart';
import 'package:codelabmodul3/app/modules/login_register/views/register_page.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/create_task_screen.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterPage(),
    ),
    // GetPage(
    //   name: _Paths.CREATE_TASK,
    //   page: () => CreateTaskScreen(isEdit: false),
    // ),
    // GetPage(
    //   name: _Paths.EDIT_TASK,
    //   page: () => CreateTaskScreen(isEdit: true),
    // ),
  ];
}
