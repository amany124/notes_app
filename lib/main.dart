import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/display_notes_cubit/display_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/observer.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/widgets/constants.dart';

void main() async {
  Bloc.observer = simpleBlocOserver();
  await Hive.initFlutter();
  Hive.registerAdapter(noteModelAdapter());
  await Hive.openBox<noteModel>(knotesBox);
  runApp(const notesApp());
}

class notesApp extends StatelessWidget {
  const notesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => displayNotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home: NotesView(),
      ),
    );
  }
}
