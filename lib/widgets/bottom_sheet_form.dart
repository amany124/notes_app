import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class bottomSheetForm extends StatefulWidget {
  const bottomSheetForm({
    super.key,
  });

  @override
  State<bottomSheetForm> createState() => _bottomSheetFormState();
}

class _bottomSheetFormState extends State<bottomSheetForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          customTextField(
            hint: 'title',
            onsaved: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 16,
          ),
          customTextField(
            hint: 'content',
            maxLines: 6,
            onsaved: (value) {
              subtitle = value;
            },
          ),
          SizedBox(
            height: 95,
          ),
          customButton(
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
              noteModel note = noteModel(
                  title: title!,
                  subtitle: subtitle!,
                  date: DateTime.now().toString(),
                  color: Colors.blue.value);
              BlocProvider.of<addNoteCubit>(context).addNoteMethod(note);
            },
          ),
          SizedBox(
            height: 22,
          ),
        ],
      ),
    );
  }
}
