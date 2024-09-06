import 'package:flutter/material.dart';

class ReadMore extends StatelessWidget {
  const ReadMore({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Row(
        children: [
          Icon(
            Icons.arrow_back_ios,
            color: Color(0xffCA7009),
          ),
          Text(
            'عرض المزيد',
            style: TextStyle(color: Color(0xffCA7009), fontSize: 14),
          ),
        ],
      ),
    );
  }
}