import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class YesAnswer extends StatelessWidget {
  YesAnswer({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 117.0, middle: 0.5),
            Pin(size: 27.0, end: 121.0),
            child: Text(
              'Правильно!',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
        ],
      ),
    );
  }
}
