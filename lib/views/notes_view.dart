import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_bottom_sheet_body.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              builder: (context) {
                return noteBootomSheetBody();
              });
        },
        child: Icon(Icons.add),
      ),
      body: notesViewBody(),
    );
  }
}
