import 'package:flutter/material.dart';

import 'widgets/custom_button.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({super.key});

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView> {
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
        height: 100,
      ),
      Image.asset('assets/images/eye_unlock_twotone.png'),
      const SizedBox(
        height: 80,
      ),
      const Text(
        'كلمة المرور الجديدة',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w900, fontSize: 20),
      ),
      const SizedBox(
        height: 5,
      ),
      const Text(
        'قم بتعيين كلمة المرور الجديدة الخاصة بحسابك',
        style: TextStyle(
            color: Color.fromARGB(255, 143, 141, 140),
            fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 40,
      ),
      Form(
        key: formKey,
        child: Column(
          children: [
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
                              obsecure
                                  ? Icons.visibility_off
                                  : Icons.visibility;
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
                        hintText: 'كلمة المرور الجديدة',
                        hintStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(34)),
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: const OutlineInputBorder(
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
            const SizedBox(
              height: 10,
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
                              obsecure
                                  ? Icons.visibility_off
                                  : Icons.visibility;
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
                        hintText: 'تأكيد كلمة المرور الجديدة',
                        hintStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(34)),
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: const OutlineInputBorder(
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
            const SizedBox(
              height: 30,
            ),
            const CustomButton(
              text: 'تأكيد',
              Navigate: 'login',
            )
          ],
        ),
      )
    ])));
  }
}
