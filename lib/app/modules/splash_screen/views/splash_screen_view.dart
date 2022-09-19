import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:user_app/app/routes/app_pages.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: ElevatedButton(onPressed: (){
          Get.offNamed(Routes.LOGIN);
        }, child: Text("login"))
      ),
    );
  }
}
