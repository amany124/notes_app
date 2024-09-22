import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/display_notes_cubit/display_notes_cubit.dart';
import 'package:notes_app/cubits/display_notes_cubit/display_notes_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class editNoteViewBody extends StatefulWidget {
  const editNoteViewBody({super.key, required this.note});
  final noteModel note;

  @override
  State<editNoteViewBody> createState() => _editNoteViewBodyState();
}

class _editNoteViewBodyState extends State<editNoteViewBody> {
  String? edited_title, edited_subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          customAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onpressed: () {
              widget.note.title = edited_title ?? widget.note.title;
              widget.note.subtitle = edited_subtitle ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<displayNotesCubit>(context).displayNotesMethod();
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 60,
          ),
          customTextField(
            hint: widget.note.title,
            onchanged: (value) {
              edited_title = value;
            },
          ),
          SizedBox(
            height: 20,
          ),
          customTextField(
            hint: widget.note.subtitle,
            maxLines: 6,
            onchanged: (value) {
              edited_subtitle = value;
            },
          ),
        ],
      ),
    );
  }
}
