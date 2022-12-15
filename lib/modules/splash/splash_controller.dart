import 'package:get/get.dart';
import 'package:getx_bmi_app/modules/home/home_screen.dart';

import '../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    super.onReady();
    await Future.delayed(Duration(milliseconds: 1200));
    Get.toNamed(Routes.LOGIN);
  }
}
