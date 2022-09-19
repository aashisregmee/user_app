import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

const baseUrl = "";

const kPrimaryColor = Color.fromARGB(255, 112, 192, 114);
const kSecondaryColor = Color.fromARGB(255, 59, 229, 221);
const kGreyColor = Color(0xFFC8CACD);
const kDarkGreyColor = Color(0xFF5E5E5E);

void showSnackbar(String message,
    {bool isError = false, bool isBottom = true, Duration? time}) async {
  await Get.closeCurrentSnackbar();
  Get.snackbar(
    isError ? 'Error' : 'Success',
    message,
    duration: time ?? const Duration(seconds: 3),
    snackPosition: isBottom ? SnackPosition.BOTTOM : SnackPosition.TOP,
    colorText: Colors.white,
    isDismissible: true,
    margin: const EdgeInsets.all(10),
    backgroundColor: isError
        ? Colors.red.shade700.withOpacity(0.75)
        : Colors.green.withOpacity(0.75),
  );
}

void showModalLoading(context) {
  showGeneralDialog(
    context: context,
    barrierColor: Colors.black.withOpacity(0.4), // Background color
    barrierDismissible: false,
    transitionDuration: const Duration(milliseconds: 400),
    pageBuilder: (_, __, ___) {
      return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Center(
          child: Lottie.asset(
            'assets/lottie/loading.json',
            height: 175,
            width: 175,
          ),
        ),
      );
    },
  );
}

void hideModalLoading(context) {
  Navigator.pop(context);
}

Text getText(String text,
    {Color color = Colors.black,
    double size = 16,
    bool isBold = false,
    TextAlign textAlign = TextAlign.left}) {
  return Text(
    text,
    style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
    textAlign: textAlign,
  );
}