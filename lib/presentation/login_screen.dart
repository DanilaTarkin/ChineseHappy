import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:happychinese/presentation/component/b_g1.dart';
import 'package:happychinese/presentation/component/email_password.dart';
import 'package:happychinese/presentation/component/sign_button.dart';
import 'package:happychinese/presentation/component/button1.dart';
import 'package:happychinese/presentation/home_screen.dart';
import 'package:adobe_xd/page_link.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe9161c),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 131.0, start: 24.0),
            Pin(size: 53.0, start: 115.0),
            child: Text(
              'Sign In',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 40,
                color: const Color(0xffe9d4a5),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 24.0, end: 24.0),
            Pin(size: 438.5, middle: 0.4725),
            child:
                // Adobe XD layer: 'BG1' (component)
                BG1(),
          ),
          Align(
            alignment: Alignment(0.0, -0.21),
            child: SizedBox(
              width: 119.0,
              height: 14.0,
              child: Text(
                'We Love to see you agian',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 10,
                  color: const Color(0x80e9d4a5),
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, -0.292),
            child: SizedBox(
              width: 219.0,
              height: 43.0,
              child: Text(
                'Welcome Back',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 32,
                  color: const Color(0xffe9d4a5),
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 51.4, end: 51.4),
            Pin(size: 117.9, middle: 0.5468),
            child:
                // Adobe XD layer: 'EmailPassword' (component)
                EmailPassword(),
          ),
          Pinned.fromPins(
            Pin(size: 155.0, middle: 0.5),
            Pin(size: 52.0, end: 94.0),
            child:
                // Adobe XD layer: 'SignButton' (component)
                SignButton(),
          ),
          Align(
            alignment: Alignment(-0.003, 0.365),
            child: SizedBox(
              width: 98.0,
              height: 34.0,
              child:
                  // Adobe XD layer: 'Button1' (component)
                  PageLink(
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
