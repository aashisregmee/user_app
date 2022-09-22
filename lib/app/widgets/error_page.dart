import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ErrorPage extends StatelessWidget {
  final void Function() onPress;
  final String errorMessage;
  const ErrorPage(
    this.errorMessage,
    this.onPress, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Icon(Icons.error, size: 70, color: Colors.red,),
          const Text(
            'Oops!',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 35,
                color: kPrimaryColor),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Text(
              errorMessage,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: kPrimaryColor),
            ),
          ),
          const SizedBox(height: 25),
          TextButton(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text(
                  'Try Again',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
              onPressed: onPress),
        ],
      ),
    );
  }
}