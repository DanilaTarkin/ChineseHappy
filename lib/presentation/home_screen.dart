import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:happychinese/presentation/component/list_.dart';
import 'package:happychinese/presentation/component/bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe9161c),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 121.0, start: 15.0),
            Pin(size: 24.0, start: 37.0),
            child: const Text(
              'HappyChinese',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 18,
                color: Color(0xffe9d4a5),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50.0, 90.0, 45.0, -21.0),
            child:
                // Adobe XD layer: 'List' (component)
                List_(),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 34.8, middle: 0.5176),
            child:
                // Adobe XD layer: 'Bar' (component)
                bar(),
          ),
        ],
      ),
    );
  }
}
