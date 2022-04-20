import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Bar extends StatefulWidget {
  const Bar({
    Key? key,
  }) : super(key: key);

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
            child: SvgPicture.string(
          _svg_keuc8r,
          allowDrawingOutsideViewBox: true,
          fit: BoxFit.fill,
        )),
        Container(),
        Pinned.fromPins(
          Pin(size: 133.0, middle: 0.4791),
          Pin(size: 2.0, end: 6.7),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0x5278849e),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ],
    );
  }
}

const String _svg_keuc8r =
    '<svg viewBox="0.0 0.0 375.0 34.8" ><path  d="M 11.99593353271484 0 L 363.0040588378906 0 C 369.6292114257812 0 375 3.13565468788147 375 7.003680229187012 L 375 34.8437385559082 L 0 34.8437385559082 L 0 7.003680229187012 C 0 3.13565468788147 5.370762825012207 0 11.99593353271484 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
