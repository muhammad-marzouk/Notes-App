import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle:const TextStyle(
          color: KPrimaryColor,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              14,
            ),
            borderSide: const BorderSide(color: Colors.white)),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPrimaryColor),
      ),
    );
  }
}

OutlineInputBorder buildBorder([Color? color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      14,
    ),
    borderSide: BorderSide(
      color: color ?? Colors.white,
    ),
  );
}
