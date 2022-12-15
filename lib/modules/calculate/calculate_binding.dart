import 'package:get/get.dart';
import 'package:getx_bmi_app/modules/calculate/calculate_controller.dart';

class CalculateBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CalculateController());
  }
}
