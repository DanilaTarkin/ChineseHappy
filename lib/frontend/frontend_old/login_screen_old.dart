import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';

import 'package:happychinese/core/constants.dart';

import 'common/b_g1.dart';
import 'common/email_password.dart';
import 'common/sign_button.dart';
import 'common/button1.dart';

import 'home_screen.dart';
import 'login_screen.dart';

class LoginScreenOld extends StatefulWidget {
  const LoginScreenOld({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreenOld> createState() => _LoginScreenOldState();
}

class _LoginScreenOldState extends State<LoginScreenOld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(colorBackground),
      appBar: AppBar(
        title: const Text('LOGIN OLD'),
        centerTitle: true,
        backgroundColor: Colors.black38,
        foregroundColor: Colors.white70,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const LoginScreen()));
          },
        ),
      ),
      body: Stack(
        children: [
          Pinned.fromPins(
            Pin(start: 24.0, end: 24.0),
            Pin(size: 438.5, middle: 0.4725),
            child: BG1(),
          ),
          const Align(
            alignment: Alignment(0.0, -0.21),
            child: SizedBox(
              width: 119.0,
              height: 14.0,
              child: Text(
                'We Love to see you agian',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 10,
                  color: Color(0x80e9d4a5),
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(0.0, -0.292),
            child: SizedBox(
              width: 219.0,
              height: 43.0,
              child: Text(
                'Welcome Back',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 32,
                  color: Color(0xffe9d4a5),
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 51.4, end: 51.4),
            Pin(size: 117.9, middle: 0.5468),
            child: EmailPassword(),
          ),
          Pinned.fromPins(
            Pin(size: 155.0, middle: 0.5),
            Pin(size: 52.0, end: 94.0),
            child: SignButton(),
          ),
          Align(
            alignment: Alignment(-0.003, 0.365),
            child: SizedBox(
              width: 98.0,
              height: 34.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => HomeScreen(),
                  ),
                ],
                child: Button1(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
