import 'package:flutter/material.dart';
import 'package:notsapp/views/widgets/custom_app_bar.dart';
import 'package:notsapp/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomAppBar(icon: Icons.edit_rounded,title: "Edite Note"),
            SizedBox(
              height: 14,
            ),
            CustomTextField(hint: "Title"),
            SizedBox(
              height: 14,
            ),
            CustomTextField(hint: "Content",maxLine: 5,)
          ],
        ),
      ),
    );
  }
}
