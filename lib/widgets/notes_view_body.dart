import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

class notesViewBody extends StatelessWidget {
  const notesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         customAppBar(),
      ],
    );
  }
}


