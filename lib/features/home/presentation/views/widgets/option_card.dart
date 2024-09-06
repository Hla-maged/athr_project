import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  bool selected = false;
  final String label, price;
  OptionCard(
      {super.key,
      required this.label,
      required this.price,
      required this.selected});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      width: 105,
      decoration: BoxDecoration(
          color: selected ? Colors.blue[50] : Colors.transparent,
          border: Border.all(
              color: !selected
                  ? const Color.fromARGB(255, 128, 181, 224)
                  : Colors.white),
          borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: true,
              groupValue: selected,
              onChanged: (value) {},
              activeColor: const Color(0xff1D75B1),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              label,
              style: TextStyle(
                  color: selected ? Color(0xff1D75B1) : Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              price,
              style: TextStyle(
                  color: selected ? Color(0xff1D75B1) : Color(0xffCA7009),
                  fontSize: 10,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
