import 'package:flutter/material.dart';
import 'package:user_app/app/utils/constants.dart';


class PasswordField extends StatefulWidget {
  const PasswordField(this.label, {required this.controller});

  final String label;
  final TextEditingController controller;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: !_isVisible,
      // style: const TextStyle(fontWeight: FontWeight.bold),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              _isVisible = !_isVisible;
            });
          },
          child: Icon(
            _isVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
        ),
       filled: true,
                fillColor: Colors.white,
                hintText: widget.label,
                alignLabelWithHint: true,
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