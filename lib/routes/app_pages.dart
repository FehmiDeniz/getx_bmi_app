import 'package:get/get.dart';
import 'package:getx_bmi_app/modules/calculate/calculate_binding.dart';
import 'package:getx_bmi_app/modules/calculate/calculate_screen.dart';
import 'package:getx_bmi_app/modules/home/home_binding.dart';
import 'package:getx_bmi_app/modules/home/home_screen.dart';
import 'package:getx_bmi_app/modules/login/login_binding.dart';
import 'package:getx_bmi_app/modules/login/login_screen.dart';
import 'package:getx_bmi_app/modules/splash/splash_binding.dart';
import 'package:getx_bmi_app/modules/splash/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.CALCULATE;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.CALCULATE,
      page: () => CalculateScreen(),
      binding: CalculateBinding(),
    ),
  ];
}
