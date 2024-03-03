import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'notes_list_view.dart';

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

            Expanded(
                child: NotesListView(),
            )
          ],
        ),
      ),
    );
  }
}


