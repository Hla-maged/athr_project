import 'package:athr_project/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_textfeild.dart';

class PasswordForgotten extends StatefulWidget {
  const PasswordForgotten({super.key});

  @override
  State<PasswordForgotten> createState() => _PasswordForgottenState();
}

class _PasswordForgottenState extends State<PasswordForgotten> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const SizedBox(
        height: 100,
      ),
      Image.asset('assets/images/sms-notification.png'),
      const SizedBox(
        height: 50,
      ),
      const Text(
        'هل نسيت كلمة المرور؟',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w900, fontSize: 20),
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        'قم بإدخال بريدك الإلكتروني لإرسال كود التحقق',
        style: TextStyle(
            color: Color.fromARGB(255, 143, 141, 140),
            fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 50,
      ),
      Form(
        child: CustomTextFormFeild(
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
      ),
      const SizedBox(
        height: 20,
      ),
      const CustomButton(
        text: 'إرسال',
        Navigate: 'verification',
      ),
    ])));
  }
}
