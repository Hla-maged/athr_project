import 'package:flutter/material.dart';

class SearchTextFeild extends StatelessWidget {
  const SearchTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            label: const Text(
              'أدخل كلمة البحث',
            ),
            labelStyle: const TextStyle(color: Color(0xff878383)),
            fillColor: const Color(0xffE6E6E6),
            filled: true,
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(34)),
                borderSide: BorderSide(color: Color(0xffE6E6E6))),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(34)),
                borderSide: BorderSide(color: Color(0xffE6E6E6))),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(34)),
                borderSide: BorderSide(color: Color(0xffE6E6E6))),
            suffixIcon: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'searchResults'),
                  child: Image.asset('assets/images/search-normal_broken.png')),
            )));
  }
}
