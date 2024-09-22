import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key, required this.title, required this.icon, this.onpressed});
  final String title;
  final IconData icon;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        customIcon(
          onpressed: onpressed,
          icon: icon,
        ),
      ],
    );
  }
}
