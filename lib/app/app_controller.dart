import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_app/app/routes/app_pages.dart';

import 'utils/constants.dart';

class AppController extends GetxController {
  final isLoggedIn = false.obs;
  User? user;

  // late FirebaseMessaging messaging;

  @override
  void onInit() {
    super.onInit();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      this.user = user;
      if (user == null) {
        isLoggedIn(false);
      } else {
        isLoggedIn(true);
      }
    });
    // messaging = FirebaseMessaging.instance;
    // messaging.requestPermission(
    //   alert: true,
    //   badge: true,
    //   provisional: false,
    //   sound: true,
    // );
    // messaging.subscribeToTopic('all');
    // checkForInitialMessage();
    // FirebaseMessaging.onMessage.listen((RemoteMessage event) {
    //   print("message recieved");
    //   if (event.notification != null) {
    //     print(
    //         'Message title: ${event.notification?.title}, body: ${event.notification?.body}, data: ${event.data}');
    //     showNotification(event);
    //   }
    // });
    // FirebaseMessaging.onMessageOpenedApp.listen((message) {
    //   print('Message clicked!');
    //   if (message.data.containsKey('eventId')) {
    //     Get.toNamed(Routes.EVENT_DETAIL, parameters: {
    //       'id': message.data['eventId'],
    //     });
    //   }
    // });
  }

  /*void showNotification(RemoteMessage event) {
    Get.snackbar(
      event.notification!.title ?? '',
      event.notification!.body ?? '',
      duration: 4.seconds,
      margin: const EdgeInsets.all(10),
      backgroundColor: Colors.white.withOpacity(0.8),
      colorText: kPrimaryColor,
      icon: const Padding(
          padding: EdgeInsets.only(left: 5),
          child: Icon(Icons.notifications_active_outlined)),
      mainButton: event.data.containsKey('eventId')
          ? TextButton(
              onPressed: () {
                Get.toNamed(Routes.EVENT_DETAIL, parameters: {
                  'id': event.data['eventId'],
                });
              },
              child: const Text(
                'View',
                style: TextStyle(color: Colors.black),
              ),
            )
          : null,
    );
  }
  */

  /*checkForInitialMessage() async {
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      print('Initial message: ${initialMessage.data}');
      if (initialMessage.data.containsKey('eventId')) {
        Get.toNamed(Routes.EVENT_DETAIL, parameters: {
          'id': initialMessage.data['eventId'],
        });
      }
    }
  }
  */

  Future<void> logout() async {
    if ((await showLogoutConfirmDialog()) != true) {
      return;
    }
    await FirebaseAuth.instance.signOut();
    isLoggedIn(false);
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
}