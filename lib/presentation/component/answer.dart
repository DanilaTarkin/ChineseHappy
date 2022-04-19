import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Answer({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(28.0),
            border: Border.all(width: 1.0, color: const Color(0xff707070)),
          ),
        ),
      ],
    );
  }
}
