import 'package:flutter/material.dart';

class ContainerType extends StatelessWidget {
  const ContainerType(
      {super.key,
      required this.color,
      required this.image,
      required this.text});
  final String text, image;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context,'containerDetails');
      },
      child: Container(
        height: 100,
        width: 170,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(height: 70, child: Image.asset(image)),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
