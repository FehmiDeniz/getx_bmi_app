import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bmi_app/modules/login/login_controller.dart';
import 'package:getx_bmi_app/modules/splash/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Hoşgeldin!",
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
      ),
    );
  }
}
