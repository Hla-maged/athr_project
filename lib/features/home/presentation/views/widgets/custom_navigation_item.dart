import 'package:flutter/material.dart';

class CustomNavigationBarItem extends StatelessWidget {
  final String text, image;
  final bool selected;
  const CustomNavigationBarItem(
      {super.key,
      required this.image,
      required this.text,
      required this.selected});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 50,
      child: Column(
        children: [
          SizedBox(
            height: 28,
            width: 27,
            child: Image.asset(
              image,
              color: selected ? Colors.blue : Colors.grey,
            ),
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 14, color: selected ? Colors.blue : Colors.grey),
          )
        ],
      ),
    );
  }
}
