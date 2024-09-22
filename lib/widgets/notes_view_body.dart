import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/display_notes_cubit/display_notes_cubit.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/notes_listview.dart';

class notesViewBody extends StatefulWidget {
  const notesViewBody({super.key});

  @override
  State<notesViewBody> createState() => _notesViewBodyState();
}

class _notesViewBodyState extends State<notesViewBody> {
  void initState() {
    BlocProvider.of<displayNotesCubit>(context).displayNotesMethod();
    super.initState();
  }

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
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(child: noteListView()),
        ],
      ),
    );
  }
}
