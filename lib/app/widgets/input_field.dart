import 'package:flutter/material.dart';
import 'package:user_app/app/utils/constants.dart';


class InputField extends StatelessWidget {
  const InputField(this.label,
      {this.inputType = TextInputType.text,
      this.textInputAction = TextInputAction.done,
      this.controller});

  final String label;
  final TextInputType inputType;
  final TextInputAction textInputAction;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      textInputAction: textInputAction,
      // style: const TextStyle(fontWeight: FontWeight.bold),
      cursorColor: Colors.black,
      decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: label,
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.7),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.7),
                ),
              ),
    );
  }
}