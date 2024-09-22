import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/cubits/display_notes_cubit/display_notes_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/constants.dart';

class displayNotesCubit extends Cubit<disaplayNoteStates> {
  displayNotesCubit() : super(disaplayNotesInitialState());
  List<noteModel> note_list = [];
  displayNotesMethod() async {
    Box notebox = Hive.box<noteModel>(knotesBox);
    note_list = notebox.values.toList() as List<noteModel>;
  }
}
