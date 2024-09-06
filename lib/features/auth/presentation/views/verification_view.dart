import 'package:athr_project/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class VerificationCodeView extends StatelessWidget {
  const VerificationCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            Image.asset('assets/images/code.png'),
            const SizedBox(
              height: 60,
            ),
            const Text(
              'كود التحقق',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                textAlign: TextAlign.center,
                'قم بكتابة كود التحقق المكون من 5 أرقام الذي تم إرساله إليك عبر البريد الإلكتروني',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            const Text('hlamaged2020@gmail.com'),
            const SizedBox(
              height: 40,
            ),
            VerificationCodeRow(),
            const SizedBox(
              height: 30,
            ),
            const CustomButton(
              text: 'تحقق',
              Navigate: 'newPass',
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'لم يتم إرسال كود التحقق ؟',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            const Icon(
              Icons.update_rounded,
              color: Color(0xff1D75B1),
            ),
            const Text(
              'أرسل الكود مرة أخرى',
              style: TextStyle(
                  color: Color(0xff1D75B1), fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

class VerificationCodeRow extends StatelessWidget {
  final List<String> codes = ['1', '2', '3', '4', '5'];

  VerificationCodeRow({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: codes.map((code) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 62, 61, 61),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Center(
            child: Text(
              code,
              style: const TextStyle(fontSize: 24.0, color: Colors.white),
            ),
          ),
        );
      }).toList(),
    );
  }
}
