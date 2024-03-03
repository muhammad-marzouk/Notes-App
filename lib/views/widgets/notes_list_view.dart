import 'package:flutter/material.dart';

import 'note_item.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // بعيد عن الbuttom bar
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            // بين ال cards
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: NoteItem(),
          );
        },
        itemCount: 10,
      ),
    );
  }
}