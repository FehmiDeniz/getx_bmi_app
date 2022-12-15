import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_bmi_app/modules/calculate/calculate_controller.dart';
import 'package:getx_bmi_app/modules/calculate/calculate_screen.dart';
import 'package:getx_bmi_app/modules/home/home_controller.dart';
import 'package:getx_bmi_app/modules/login/login_controller.dart';
import 'package:getx_bmi_app/modules/splash/splash_controller.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({super.key});

  TextEditingController cmText = TextEditingController();
  TextEditingController kgText = TextEditingController();
  CalculateController calculateController = Get.put(CalculateController());
  LoginController loginController = Get.put(LoginController());
  @override
  HomeController controller = Get.put(HomeController()); //?

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: Text("HOŞGELDİN ${loginController.userName}".toUpperCase()),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: cmText,
            toolbarOptions: const ToolbarOptions(
              copy: false,
              cut: false,
              paste: false,
              selectAll: false,
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            ],
            decoration: InputDecoration(
                labelText: "Height",
                labelStyle: TextStyle(color: Colors.red.withOpacity(0.8))),
          ),
          TextField(
            controller: kgText,
            toolbarOptions: const ToolbarOptions(
              copy: false,
              cut: false,
              paste: false,
              selectAll: false,
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            ],
            decoration: InputDecoration(
                labelText: "Weight",
                labelStyle: TextStyle(color: Colors.red.withOpacity(0.8))),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600),
              onPressed: () {
                controller.boy = cmText.text;
                controller.kilo = kgText.text;

                if ((controller.boy != "") && (controller.kilo != "")) {
                  Get.to(CalculateScreen());
                } else {
                  Get.snackbar("Hata!", "Değer Giriniz");
                }
              },
              child: Text(
                "Calculate",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
