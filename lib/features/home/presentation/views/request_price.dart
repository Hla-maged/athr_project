import 'package:athr_project/features/auth/presentation/views/widgets/custom_textfeild.dart';
import 'package:flutter/material.dart';

import '../../../auth/presentation/views/widgets/custom_button.dart';

class RequestPrice extends StatefulWidget {
  const RequestPrice({super.key});

  @override
  State<RequestPrice> createState() => _RequestPriceState();
}

class _RequestPriceState extends State<RequestPrice> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? email, phone, first, last;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 60,
        ),
        const AppBar(),
        const SizedBox(
          height: 10,
        ),
        const Center(
            child: Text(
          'يمكنك إرسال طلب عرض سعر خاص',
          style: TextStyle(color: Colors.grey),
        )),
        const SizedBox(
          height: 30,
        ),
        Form(
            key: _formKey,
            child: Column(children: [
              CustomTextFormFeildWithoutIcon(
                hint: 'الاسم الأول',
                onSaved: (val) {
                  first = val;
                },
                validator: (val) {
                  if (val == null) {
                    return 'رجاء ادخال الاسم الاول';
                  }
                  return 'null';
                },
              ),
              CustomTextFormFeildWithoutIcon(
                hint: 'الاسم الأخير',
                onSaved: (val) {
                  last = val;
                },
                validator: (val) {
                  if (val == null) {
                    return 'رجاء ادخال الاسم الاخير';
                  }
                  return 'null';
                },
              ),
              CustomTextFormFeildWithoutIcon(
                hint: 'البريد الإلكتروني',
                onSaved: (val) {
                  email = val;
                },
                validator: (val) {
                  if (val == null || !val.contains('@')) {
                    return 'رجاء ادخال بريد الكتروني صحيح';
                  }
                  return 'null';
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, bottom: 10),
                      child: TextFormField(
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          hintText: 'رقم الجوال',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(34)),
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(34)),
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                        onSaved: (val) {
                          phone = val;
                        },
                        validator: (val) {
                          if (val == null) {
                            return 'رجاء ادخال رقم الجوال';
                          }
                          if (val.length != 11) {
                            return 'رقم الجوال يجب ان يتكون من 11 رقم';
                          }
                          return 'null';
                        },
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
              const CustomTextFeild(hint: 'نص الرسالة'),
              const SizedBox(
                height: 20,
              ),
              const CustomButton(
                text: 'إرسال الطلب',
                Navigate: 'containerDetails',
              )
            ])),
      ]),
    ));
  }
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 120,
        ),
        const Text(
          'طلب عرض سعر',
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

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    this.onSaved,
    required this.hint,
  });
  final void Function(String?)? onSaved;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
            child: TextFormField(
              maxLines: 6,
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
