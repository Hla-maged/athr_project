
import 'package:flutter/material.dart';

class Quantity extends StatelessWidget {
  int quan = 2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.remove_circle_outline)),
        const SizedBox(
          width: 12,
        ),
        Text(
          '$quan',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
        ),
        const SizedBox(
          width: 12,
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle_outline))
      ],
    );
  }
}
