import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/display_notes_cubit/display_notes_cubit.dart';
import 'package:notes_app/cubits/display_notes_cubit/display_notes_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class noteListView extends StatelessWidget {
  const noteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<displayNotesCubit, disaplayNoteStates>(
      builder: (context, state) {
        List<noteModel> note_list =
            BlocProvider.of<displayNotesCubit>(context).note_list;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 17),
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: note_list.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: noteItem(
                    note: note_list[index],
                  ),
                );
              }),
        );
      },
    );
  }
}
