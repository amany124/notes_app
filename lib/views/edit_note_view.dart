 import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_noteview_body.dart';

class editNoteView extends StatelessWidget {
  const editNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: editNoteViewBody(),
    );
  }
}