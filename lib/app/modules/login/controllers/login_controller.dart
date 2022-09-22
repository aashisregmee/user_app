import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/constants.dart';

class LoginController extends GetxController {
  
  late final TextEditingController usernameController;
  late final TextEditingController passwordController;

  final isLoading = false.obs;



  @override
  void onInit() {
    super.onInit();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }


  Future<void> login() async {
    String username = usernameController.text.trim();

    String password = passwordController.text.trim();
     Get.closeAllSnackbars();
    if (username.isEmpty || password.isEmpty) {
      showSnackbar('All fields are required.', isError: true, isBottom: false);
      return;
    }
    if (!username.isEmail) {
      showSnackbar('Invalid email address.', isBottom: false, isError: true);
      return;
    }
 isLoading (true);
    try {
     
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: username, password: password);
          Get.offAllNamed(Routes.HOME);
      showSnackbar('Login Successful.', isBottom: false, isError: false);
    } on FirebaseAuthException catch (e) {
      print(e);
      if (e.code == 'user-not-found') {
        showSnackbar('User not found.', isBottom: false, isError: true);
      } else if (e.code == 'wrong-password') {
        showSnackbar('Wrong password.', isBottom: false, isError: true);
      } else {
        showSnackbar('An error occurred.', isBottom: false, isError: true);
      }
    }
     isLoading (false);
  }
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    usernameController.dispose();
    passwordController.dispose();
  }


}
