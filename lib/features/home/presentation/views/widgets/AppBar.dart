import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key,required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 150,
        ),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
        ),
        const SizedBox(
          width: 100,
        ),
        GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_forward)),
      ],
    );
  }
}
