import 'package:flutter/material.dart';

import '../utils/constants.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPress;
  final String text;

  const PrimaryButton({
    required this.text,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,
        height: 45,
        child: ElevatedButton(
          onPressed: onPress,
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(kSecondaryColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            )),
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 5,
              ),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}