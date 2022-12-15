import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bmi_app/routes/app_pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI APP',
      initialRoute: Routes.SPLASH,
      getPages: AppPages.routes,
    );
  }
}