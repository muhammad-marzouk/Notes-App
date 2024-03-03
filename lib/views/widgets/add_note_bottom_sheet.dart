import 'package:flutter/material.dart';
import 'package:notsapp/constants.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 35,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 14,
            ),
            CustomTextField(hint: 'Content', maxLine: 5),
            SizedBox(
              height: 100,
            ),
            // Spacer(), give Error
            CustomButton(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: KPrimaryColor,
      ),
      child: Center(
          child: Text(
        "ADD",
        style: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
      )),
    );
  }
}
