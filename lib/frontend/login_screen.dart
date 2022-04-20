import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';

import '../core/constants.dart';

import 'common/b_g1.dart';
import 'common/email_password.dart';
import 'common/sign_button.dart';
import 'common/button1.dart';

import 'home_screen.dart';
import 'splash_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(colorBackground),
      appBar: AppBar(
        title: const Text('LOGIN SCREEN'),
        centerTitle: true,
        backgroundColor: Colors.black38,
        foregroundColor: Colors.white70,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const SplashScreen()));
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                color: Colors.purple,
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 40,
                    color: Color(0xffe9d4a5),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Center(
              child: Container(
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      BG1(),
                      Column(
                        children: [
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
                          //EmailPassword(),
                          //SignButton(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                color: Colors.green,
                child: Align(
                  alignment: const Alignment(-0.003, 0.365),
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
