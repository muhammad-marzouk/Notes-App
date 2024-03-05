import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notsapp/views/notes_view.dart';
import 'constants.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(KNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness:Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: NotesView(),
    );
  }
}
