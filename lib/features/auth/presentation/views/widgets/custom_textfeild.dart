import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild(
      {super.key,
      this.onSaved,
      this.onTap,
      required this.hint,
      this.suffixicon,
      this.prefixicon,
      this.validator,
      this.obsecure});
  final void Function(String?)? onSaved;
  final String Function(String?)? validator;
  final void Function()? onTap;
  final IconData? suffixicon;
  final IconData? prefixicon;
  final bool? obsecure;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
            child: TextFormField(
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              onSaved: onSaved,
              // validator: validator,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  suffixicon,
                  color: Colors.grey,
                ),
                hintText: hint,
                hintStyle: const TextStyle(color: Colors.grey),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(34)),
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(34)),
                    borderSide: BorderSide(color: Colors.grey)),
              ),
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomTextFormFeildWithoutIcon extends StatelessWidget {
  const CustomTextFormFeildWithoutIcon(
      {super.key,
      this.onSaved,
      this.onTap,
      required this.hint,
      this.suffixicon,
      this.prefixicon,
      this.validator,
      this.obsecure});
  final void Function(String?)? onSaved;
  final String Function(String?)? validator;
  final void Function()? onTap;
  final IconData? suffixicon;
  final IconData? prefixicon;
  final bool? obsecure;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
            child: TextFormField(
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              onSaved: onSaved,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(color: Colors.grey),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(34)),
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(34)),
                    borderSide: BorderSide(color: Colors.grey)),
              ),
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
