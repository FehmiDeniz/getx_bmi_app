import 'package:get/get.dart';

class HomeController extends GetxController {
  String? boy;
  String? kilo;
  @override
  void onInit() {
    super.onInit();
    boy = Get.parameters['boy'];
    kilo = Get.parameters['kilo'];
    print("homescreen is started ");
  }
}
