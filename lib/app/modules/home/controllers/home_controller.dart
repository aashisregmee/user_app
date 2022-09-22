import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

   Future<void> logout() async {
    if ((await showLogoutConfirmDialog()) != true) {
      return;
    }
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }

  Future<bool?> showLogoutConfirmDialog() async {
    return await Get.dialog(AlertDialog(
      title: const Text('Logout'),
      content: const Text('Are you sure you want to logout?'),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Get.back();
          },
        ),
        TextButton(
          child: const Text('Logout'),
          onPressed: () {
            Get.back(result: true);
          },
        ),
      ],
    ));
  }

  @override
  void onClose() {
    super.onClose();
  }
}
