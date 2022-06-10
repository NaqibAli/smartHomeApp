import 'package:get/get.dart';

import '../modules/alldevices/bindings/alldevices_binding.dart';
import '../modules/alldevices/views/alldevices_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/singup/bindings/singup_binding.dart';
import '../modules/singup/views/singup_view.dart';

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
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SINGUP,
      page: () => SingupView(),
      binding: SingupBinding(),
    ),
    GetPage(
      name: _Paths.ALLDEVICES,
      page: () => AlldevicesView(),
      binding: AlldevicesBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
