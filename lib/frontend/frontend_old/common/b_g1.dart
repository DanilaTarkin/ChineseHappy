import 'package:flutter/material.dart';

class BG1 extends StatefulWidget {
  const BG1({
    Key? key,
  }) : super(key: key);

  @override
  State<BG1> createState() => _BG1State();
}

class _BG1State extends State<BG1> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffd63e3e),
            borderRadius: BorderRadius.circular(51.0),
            boxShadow: const [
              BoxShadow(
                color: Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
              ),
            ],
          ),
          margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 24.0),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0x80d63e3e),
            borderRadius: BorderRadius.circular(12.0),
          ),
          margin: const EdgeInsets.fromLTRB(32.0, 25.0, 32.0, 0.0),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xccd63e3e),
            borderRadius: BorderRadius.circular(12.0),
          ),
          margin: const EdgeInsets.fromLTRB(17.0, 15.0, 17.0, 11.0),
        ),
      ],
    );
  }
}
