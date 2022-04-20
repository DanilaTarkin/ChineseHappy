import 'package:flutter/material.dart';

import '../core/constants.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(colorBackground),
      body: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const LoginScreen()));
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 106.0),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageDragon),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
