import 'package:flutter/material.dart';
import 'package:happychinese/presentation/logup_screen.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignButton extends StatelessWidget {
  SignButton({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
            child:
                // Adobe XD layer: 'SignNuttonBG' (shape)
                PageLink(
          links: [
            PageLinkInfo(
              transition: LinkTransition.Fade,
              ease: Curves.easeOut,
              duration: 0.3,
              pageBuilder: () => LogupScreen(),
            ),
          ],
          child: SvgPicture.string(
            _svg_hpasyd,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        )),
        Pinned.fromPins(
          Pin(size: 74.0, middle: 0.5062),
          Pin(startFraction: 0.1923, endFraction: 0.1923),
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 20,
              color: const Color(0xffe9d4a5),
              fontWeight: FontWeight.w700,
              height: 2.15,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

const String _svg_hpasyd =
    '<svg viewBox="0.0 0.0 155.0 52.0" ><path  d="M 12 0 L 143 0 C 149.6274108886719 0 155 5.372583389282227 155 12 L 155 40 C 155 46.62741851806641 149.6274108886719 52 143 52 L 12 52 C 5.372583389282227 52 0 46.62741851806641 0 40 L 0 12 C 0 5.372583389282227 5.372583389282227 0 12 0 Z" fill="#6644cc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
