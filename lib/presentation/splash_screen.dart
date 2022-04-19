import 'package:flutter/material.dart';
import 'package:happychinese/presentation/component/back_grounds.dart';
import 'package:happychinese/presentation/login_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9d1115),
      body: GestureDetector(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen()));
        },
        child: Padding(
          padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 106.0),
          child: BackGrounds(),
        ),
      ),
    );
  }
}
