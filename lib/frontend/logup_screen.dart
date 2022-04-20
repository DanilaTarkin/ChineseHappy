import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';

import 'common/b_g.dart';
import 'common/sign_up_info.dart';
import 'common/sign_button.dart';
import 'common/button1.dart';

import 'login_screen.dart';
import 'home_screen.dart';

class LogupScreen extends StatelessWidget {
  const LogupScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe9161c),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 148.0, start: 24.0),
            Pin(size: 53.0, start: 109.0),
            child: const Text(
              'Sign Up',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 40,
                color: Color(0xffe9d4a5),
                fontWeight: FontWeight.w700,
                height: 1.325,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 24.0, end: 24.0),
            Pin(size: 438.5, middle: 0.4725),
            child:
                // Adobe XD layer: 'BG' (component)
                BG(),
          ),
          Pinned.fromPins(
            Pin(start: 51.4, end: 51.4),
            Pin(size: 135.3, middle: 0.537),
            child:
                // Adobe XD layer: 'SignUpInfo' (component)
                SignUpInfo(),
          ),
          const Align(
            alignment: Alignment(0.0, -0.296),
            child: SizedBox(
              width: 150.0,
              height: 36.0,
              child: Text(
                'Lets Join Us',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 27,
                  color: Color(0xffe9d4a5),
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(0.004, -0.226),
            child: SizedBox(
              width: 136.0,
              height: 14.0,
              child: Text(
                'We would love you to join us',
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
          Pinned.fromPins(
            Pin(size: 155.0, middle: 0.5),
            Pin(size: 52.0, end: 94.0),
            child:
                // Adobe XD layer: 'SignButton' (component)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => LoginScreen(),
                ),
              ],
              child: SignButton(),
            ),
          ),
          Align(
            alignment: const Alignment(-0.003, 0.365),
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
