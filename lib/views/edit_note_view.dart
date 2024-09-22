import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/edit_noteview_body.dart';

class editNoteView extends StatelessWidget {
  const editNoteView({super.key, required this.note});
  final noteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: editNoteViewBody(note:note),
    );
  }
}
