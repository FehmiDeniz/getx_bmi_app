import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bmi_app/modules/home/home_screen.dart';
import 'package:getx_bmi_app/modules/login/login_controller.dart';
import 'package:getx_bmi_app/modules/splash/splash_screen.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({super.key});

  TextEditingController userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Image.network(
              "https://lh3.googleusercontent.com/4NurtPAmB8itCQV5wZHuOGudo-fU9L8JOgyNWO-u9-WwPys4w39fcTJKRzl7fv3tF6k",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            "Tanıyalım Seni...",
            style: Theme.of(context).textTheme.headline4,
          ),
          TextField(
            controller: userNameController,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'İsim?',
                hintStyle: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontStyle: FontStyle.italic)),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade700),
              onPressed: () {
                controller.userName = userNameController.text;
                controller.userName != ""
                    ? Get.to(HomeScreen(),
                        duration: Duration(milliseconds: 1000),
                        transition: Transition.leftToRightWithFade)
                    : Get.snackbar("Hata", "Lütfen İsim Girin!");
                userNameController.text = "";
              },
              child: Icon(
                Icons.keyboard_arrow_right,
                size: 35,
              ))
        ],
      ),
    );
  }
}
