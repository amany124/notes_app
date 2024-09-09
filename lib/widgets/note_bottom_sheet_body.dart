import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class noteBootomSheetBody extends StatelessWidget {
  const noteBootomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            customTextField(
              hint: 'title',
            ),
            SizedBox(
              height: 16,
            ),
            customTextField(
              hint: 'content',
              maxLines: 6,
            ),
            SizedBox(
              height: 95,
            ),
            customButton(),
            SizedBox(
              height: 22,
            ),
          ],
        ),
      ),
    );
  }
}
