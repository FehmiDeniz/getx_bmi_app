import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bmi_app/modules/calculate/calculate_controller.dart';
import 'package:getx_bmi_app/modules/home/home_controller.dart';
import 'package:getx_bmi_app/calculator.dart';
import 'package:getx_bmi_app/modules/home/home_screen.dart';
import 'package:getx_bmi_app/modules/login/login_screen.dart';
import 'package:getx_bmi_app/modules/splash/splash_screen.dart';

class CalculateScreen extends GetView<CalculateController> {
  CalculateScreen({super.key});

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Your BMI SCORE",
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              controller
                  .result(double.parse(homeController.kilo.toString()),
                      double.parse(homeController.boy.toString()))!
                  .toStringAsFixed(2),
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.red),
            ),
            Text(controller.getHesap(controller.bmi),
                style: Theme.of(context).textTheme.headline5!),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(controller.bilgi(controller.bmi),
                  style: Theme.of(context).textTheme.headline6!),
            ),
            TextButton(
              onPressed: () {
                Get.to(LoginScreen());
              },
              child: Text("Refresh!"),
            )
          ],
        ),
      ),
    );
  }
}
