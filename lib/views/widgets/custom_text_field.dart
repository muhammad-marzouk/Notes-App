import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLine =1, this.onSaved});

  final String hint;
  final int maxLine;
  // 9- create function to onSaved and add to constructor
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    // 7- convert from textField to TextFormField
    return TextFormField(
      // 8- onSaved
      onSaved: onSaved,
      cursorColor: KPrimaryColor,
      maxLines: maxLine,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        hintText: hint,
        hintTextDirection: TextDirection.ltr,
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
