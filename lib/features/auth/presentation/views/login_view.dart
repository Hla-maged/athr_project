import 'package:athr_project/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_textfeild.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email, password;
  bool obsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const SizedBox(
        height: 120,
      ),
      Image.asset('assets/images/image 2.png'),
      const SizedBox(
        height: 50,
      ),
      const Text(
        'تسجيل الدخول',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w900, fontSize: 22),
      ),
      const SizedBox(
        height: 5,
      ),
      const Text(
        'قم بإدخال بريدك الإلكتروني لتسجيل الدخول',
        style: TextStyle(
          color: Color.fromARGB(255, 143, 141, 140),
        ),
      ),
      const SizedBox(
        height: 20,
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
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 20, bottom: 10),
                  child: TextFormField(
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    onSaved: (val) {
                      password = val;
                    },
                    validator: (val) {
                      if (val == null || val.length < 6) {
                        return 'كلمة المرور يجب ان لا تقل عن 6 احرف';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            obsecure = !obsecure;
                            obsecure ? Icons.visibility_off : Icons.visibility;
                          });
                        },
                        child: const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      suffixIcon: const Icon(
                        Icons.lock_outline,
                        color: Colors.grey,
                      ),
                      hintText: 'أدخل كلمة المرور',
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(34)),
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(34)),
                          borderSide: BorderSide(color: Colors.grey)),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(34)),
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                    style: const TextStyle(color: Colors.grey),
                    obscureText: obsecure,
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
      const SizedBox(
        height: 15,
      ),
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'forgotten');
        },
        child: const Text(
          'هل نسيت كلمة المرور؟',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      const CustomButton(
        text: 'الدخول',
        Navigate: 'main',
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        'ليس لديك حساب ؟',
        style: TextStyle(color: Colors.grey),
      ),
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'register');
        },
        child: const Text(
          '← تسجيل حساب جديد',
          style: TextStyle(
              color: Color(0xff1D75B1),
              fontWeight: FontWeight.bold,
              fontSize: 14),
        ),
      ),
    ])));
  }
}
