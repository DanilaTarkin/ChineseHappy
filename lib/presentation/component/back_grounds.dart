import 'package:flutter/material.dart';

class BackGrounds extends StatelessWidget {
  BackGrounds({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/dragon.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
