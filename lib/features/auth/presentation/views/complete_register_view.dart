import 'package:athr_project/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_textfeild.dart';

class CompleteRegisterView extends StatefulWidget {
  const CompleteRegisterView({super.key});

  @override
  State<CompleteRegisterView> createState() => _CompleteRegisterViewState();
}

class _CompleteRegisterViewState extends State<CompleteRegisterView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? email, username, phone, password, Confirmpass;
  bool ErrorMessage = false;
  bool obsecure1 = true, obsecure2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(
            height: 80,
          ),
          Image.asset('assets/images/user.png'),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'إستكمال البيانات',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w900, fontSize: 22),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'قم بإستكمال بياناتك الشخصية لتتمكن من تسجيل حسابك',
            style: TextStyle(
                color: Color.fromARGB(255, 143, 141, 140),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Form(
            key: _formKey,
            child: Column(children: [
              CustomTextFormFeildWithoutIcon(
                hint: 'الاسم الأول',
                onSaved: (val) {
                  email = val;
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
                  email = val;
                },
                validator: (val) {
                  if (val == null) {
                    return 'رجاء ادخال الاسم الاخير';
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
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, bottom: 10),
                      child: TextFormField(
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        obscureText: obsecure1,
                        validator: (val) {
                          if (val == null || val.length < 6) {
                            return 'كلمة المرور يجب ان لا تقل عن 6 احرف';
                          }
                          return null;
                        },
                        onSaved: (val) {
                          password = val;
                        },
                        onChanged: (val) {
                          setState(() {
                            ErrorMessage = false;
                          });
                        },
                        decoration: InputDecoration(
                          prefixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                obsecure1 = !obsecure1;
                                obsecure1
                                    ? Icons.visibility_off
                                    : Icons.visibility;
                              });
                            },
                            child: const Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          hintText: 'كلمة المرور',
                          hintStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(34)),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(34)),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
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
                                obsecure2 = !obsecure2;
                                obsecure2
                                    ? Icons.visibility_off
                                    : Icons.visibility;
                              });
                            },
                            child: const Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          hintText: 'تأكيد كلمة المرور',
                          hintStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(34)),
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(34)),
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                        style: const TextStyle(color: Colors.grey),
                        obscureText: obsecure2,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomButton(
            text: 'تأكيد',
            Navigate: 'login',
          ),
        ]),
      ),
    );
  }
}
