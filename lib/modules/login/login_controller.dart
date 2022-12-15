import 'package:get/get.dart';

class LoginController extends GetxController {
  String? userName;

  @override
  void onInit() {
    userName = Get.parameters['username'];
    print("username :  ${userName}");
    super.onInit();
  }
}
