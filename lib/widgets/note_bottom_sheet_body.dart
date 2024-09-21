import 'package:flutter/material.dart';
import 'package:notes_app/widgets/bottom_sheet_form.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class noteBootomSheetBody extends StatelessWidget {
  const noteBootomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: bottomSheetForm(),
      ),
    );
  }
}
