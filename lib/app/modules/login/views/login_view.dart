import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:user_app/app/routes/app_pages.dart';
import 'package:user_app/app/utils/constants.dart';
import 'package:user_app/app/widgets/input_field.dart';
import 'package:user_app/app/widgets/password_field.dart';
import 'package:user_app/app/widgets/primary_button.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: kPrimaryColor,
      body: Center(
        child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo.png",width: MediaQuery.of(context).size.width*.5,),
                  const SizedBox(height: 20,),
                  InputField("Username", controller: controller.usernameController, textInputAction: TextInputAction.next,),
                  const SizedBox(height: 10,),
                  PasswordField("Password", controller: controller.passwordController),
                  const SizedBox(height: 20,),
                 PrimaryButton(text: "Login", onPress:(){
                  Get.offNamed(Routes.HOME);
                 } ),
                 const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Forgot Password?"),
                      SizedBox(width: 5),
                      Text(
                        "SignUp",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}
