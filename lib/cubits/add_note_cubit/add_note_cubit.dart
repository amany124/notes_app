import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/constants.dart';

class addNoteCubit extends Cubit<addNoteStates> {
  addNoteCubit() : super(addNoteInitialState());
  Color color = const Color(0xffAA4465);
  addNoteMethod(noteModel note) async {
    emit(addNoteLoadingState());
    try {
      note.color = color.value;
      Box notebox = Hive.box<noteModel>(knotesBox);
      await notebox.add(note);
      emit(addNoteSucessState());
    } catch (e) {
      emit(addNoteFailureState('there is problem with adding note'));
    }
  }
}
