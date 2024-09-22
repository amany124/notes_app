import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/widgets/bottom_sheet_form.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class noteBootomSheetBody extends StatelessWidget {
  const noteBootomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => addNoteCubit(),
      child: BlocConsumer<addNoteCubit, addNoteStates>(
        listener: (context, state) {
          if (state is addNoteSucessState) {
            Navigator.pop(context);
          }
          if (state is addNoteFailureState) {
            print(state.error);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is addNoteLoadingState,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: bottomSheetForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
