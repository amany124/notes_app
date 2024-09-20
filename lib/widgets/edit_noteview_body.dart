import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class editNoteViewBody extends StatelessWidget {
  const editNoteViewBody({super.key});

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
          ),
          SizedBox(
            height: 60,
          ),
          customTextField(
            hint: 'title',
          ),
          SizedBox(
            height: 20,
          ),
          customTextField(
            hint: 'content',
            maxLines: 6,
          ),
        ],
      ),
    );
  }
}
