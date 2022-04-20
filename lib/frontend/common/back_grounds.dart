import 'package:flutter/material.dart';

class BackGrounds extends StatefulWidget {
  const BackGrounds({
    Key? key,
  }) : super(key: key);

  @override
  State<BackGrounds> createState() => _BackGroundsState();
}

class _BackGroundsState extends State<BackGrounds> {
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
