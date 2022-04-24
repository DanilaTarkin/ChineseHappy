import 'package:flutter/material.dart';
import 'dart:async';
import 'login_screen_new.dart';

class SplashScreenNew extends StatefulWidget {
  const SplashScreenNew({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreenNew> createState() => _SplashScreenNewState();
}

class _SplashScreenNewState extends State<SplashScreenNew> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreenNew())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const LoginScreenNew()));
        },
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.white,
              Colors.blueAccent,
            ],
          )),
          child: const Center(
            child: Text(
              'HAPPY CHINISE',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 35,
                color: Color.fromARGB(255, 0, 34, 129),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
