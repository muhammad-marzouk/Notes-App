import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'note_item.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

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
            CustomAppBar(),
            SizedBox(
              height: 20,
            ),
            NoteItem()
          ],
        ),
      ),
    );
  }
}


