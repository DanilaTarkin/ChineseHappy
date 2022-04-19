import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:happychinese/presentation/component/answer.dart';

class QuestionScreen extends StatelessWidget {
  QuestionScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe9161c),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 194.0, middle: 0.5028),
            Pin(size: 27.0, start: 113.0),
            child: Text(
              'Выберите "Привет"',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xffe9d4a5),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 135.0, start: 25.0),
            Pin(size: 151.0, middle: 0.4191),
            child:
                // Adobe XD layer: 'Answer' (component)
                Answer(),
          ),
          Container(),
          Pinned.fromPins(
            Pin(size: 135.0, end: 25.0),
            Pin(size: 151.0, middle: 0.4191),
            child:
                // Adobe XD layer: 'Answer' (component)
                Answer(),
          ),
          Pinned.fromPins(
            Pin(size: 135.0, start: 25.0),
            Pin(size: 151.0, middle: 0.7126),
            child:
                // Adobe XD layer: 'Answer' (component)
                Answer(),
          ),
          Pinned.fromPins(
            Pin(size: 135.0, end: 25.0),
            Pin(size: 151.0, middle: 0.7126),
            child:
                // Adobe XD layer: 'Answer' (component)
                Answer(),
          ),
        ],
      ),
    );
  }
}
