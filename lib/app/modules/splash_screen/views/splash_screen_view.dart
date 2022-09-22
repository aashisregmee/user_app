import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:user_app/app/routes/app_pages.dart';

import '../../../widgets/error_page.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.isError.isTrue
          ? ErrorPage(controller.errorMessage, controller.checkLogin)
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                  // const SizedBox(height: 20),
                  // const Loading(
                  //   size: 150,
                  // )
                ],
              ),
            )),
    );
  }
}
