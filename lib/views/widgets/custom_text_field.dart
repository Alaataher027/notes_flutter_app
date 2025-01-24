import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimartColor,
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: TextStyle(color: kPrimartColor),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimartColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
