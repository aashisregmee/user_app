import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import 'package:user_app/app/app_controller.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
        publicKey: "test_public_key_eb0cf7ba6a604c7fbaf6b667631faaf5",
        builder: (context, navigatorKey) {
          GetMaterialApp(
              title: "User App",
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
              debugShowCheckedModeBanner: false,
              initialBinding: BindingsBuilder(() {
                Get.put(AppController(), permanent: true);
              }));
        });
  }
}
