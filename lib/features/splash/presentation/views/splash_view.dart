import 'package:athr_project/constants.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    NavigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Center(
        child: SizedBox(
            height: 80,
            width: 180,
            child: Image.asset('assets/images/logo.png')),
      ),
    );
  }

  void NavigateToHome() {
    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      Navigator.pushNamed(context, 'login');
    });
  }
}
