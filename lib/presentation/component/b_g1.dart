import 'package:flutter/material.dart';

class BG1 extends StatelessWidget {
  BG1({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'bg2' (shape)
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffd63e3e),
            borderRadius: BorderRadius.circular(51.0),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
              ),
            ],
          ),
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 24.0),
        ),
        // Adobe XD layer: 'bg1' (shape)
        Container(
          decoration: BoxDecoration(
            color: const Color(0x80d63e3e),
            borderRadius: BorderRadius.circular(12.0),
          ),
          margin: EdgeInsets.fromLTRB(32.0, 25.0, 32.0, 0.0),
        ),
        // Adobe XD layer: 'bg' (shape)
        Container(
          decoration: BoxDecoration(
            color: const Color(0xccd63e3e),
            borderRadius: BorderRadius.circular(12.0),
          ),
          margin: EdgeInsets.fromLTRB(17.0, 15.0, 17.0, 11.0),
        ),
      ],
    );
  }
}
