import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class noteListView extends StatelessWidget {
  const noteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: noteItem(),
      );
    });
  }
}
