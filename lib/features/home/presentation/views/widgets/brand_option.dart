import 'package:flutter/material.dart';

class BrandOption extends StatelessWidget {
  const BrandOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 60, child: Image.asset('assets/images/gree_logo.png')),
        SizedBox(
          width: 30,
          child: Checkbox(
            value: false,
            onChanged: (val) {},
            shape: CircleBorder(),
            checkColor: Color(0xffCA7009),
          ),
        )
      ],
    );
  }
}