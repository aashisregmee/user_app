import 'package:get/get.dart';

import '../../../app_controller.dart';
import '../../../routes/app_pages.dart';

class SplashScreenController extends GetxController {
  final isError = false.obs;
  String errorMessage = '';

  @override
  void onInit() {
    super.onInit();
    checkLogin();
  }

  Future<void> checkLogin() async {
    isError(false);
    await Future.delayed(Duration(seconds: 2));
   
    try {
      if (Get.find<AppController>().isLoggedIn.isTrue) {
        await Future.delayed(Duration(seconds: 2));
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.offAllNamed(Routes.LOGIN);
      }
    } catch (e) {
      isError(true);
      errorMessage = e.toString();
    }
  }
}
