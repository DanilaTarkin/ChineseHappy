import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';

import 'common/b_g.dart';
import 'common/b_g1.dart';
import 'common/email_password.dart';
import 'common/sign_up_info.dart';
import 'common/sign_button.dart';
import 'common/button1.dart';

import 'login_screen.dart';
import 'home_screen.dart';
import 'splash_screen.dart';

class LogupScreen extends StatefulWidget {
  const LogupScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LogupScreen> createState() => _LogupScreenState();
}

class _LogupScreenState extends State<LogupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe9161c),
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
                child: const Text('Sign Up',
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                  //   const BG1(),
                    Column(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 1,
                            child: Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'Lets Join Us',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 32,
                                    color: Color(0xffe9d4a5),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'We would love you to join us',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 10,
                                    color: Color(0x80e9d4a5),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ))),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                color: Colors.black38,
                                child: const SignUpInfo(),
                              ),
                            )),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 200,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black38),
                                gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.black38,
                                      Colors.transparent
                                    ])),
                            child: FlatButton(
                              onPressed: () {},
                              color: Colors.white10,
                              child: const Text(
                                'Архив',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
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
                        pageBuilder: () => LogupScreen(),
                      ),
                    ],
                    child: Button1(),
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
