import 'package:flutter/material.dart';

import 'widgets/custom_button.dart';
import 'widgets/custom_textfeild.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const SizedBox(
        height: 130,
      ),
      Image.asset('assets/images/image 2.png'),
      const SizedBox(
        height: 70,
      ),
      const Text(
        'تسجيل حساب جديد',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w900, fontSize: 20),
      ),
      const SizedBox(
        height: 5,
      ),
      const Text(
        'قم بإدخال بريدك الإلكتروني لتسجيل حساب جديد',
        style: TextStyle(
          color: Color.fromARGB(255, 143, 141, 140),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Form(
          key: formKey,
          child: Column(children: [
            CustomTextFormFeild(
              hint: 'أدخل البريد الإلكتروني',
              onSaved: (val) {
                email = val;
              },
              validator: (val) {
                if (val == null || !val.contains('@')) {
                  return 'رجاء ادخال بريد الكتروني صحيح';
                }
                return 'null';
              },
              suffixicon: Icons.email_outlined,
            ),
          ])),
      const SizedBox(
        height: 20,
      ),
      const CustomButton(
        text: 'تسجيل',
        Navigate: 'completeRegister',
      ),
      const SizedBox(
        height: 100,
      ),
      const Text(
        'لديك حساب بالفعل ؟',
        style: TextStyle(color: Colors.grey),
      ),
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'login');
        },
        child: const Text(
          'تسجيل الدخول',
          style: TextStyle(
              color: Color(0xff1D75B1),
              fontWeight: FontWeight.bold,
              fontSize: 14),
        ),
      ),
    ])));
  }
}
