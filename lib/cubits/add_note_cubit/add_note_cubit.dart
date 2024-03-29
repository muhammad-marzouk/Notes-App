import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notsapp/constants.dart';
import 'package:notsapp/models/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async{
    emit(AddNoteLoading());
    try {
      var notesBox =Hive.box<NoteModel>(KNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
