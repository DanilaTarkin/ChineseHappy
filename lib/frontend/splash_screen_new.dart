import 'package:flutter/material.dart';
import 'package:happychinese/core/constants.dart';
import 'dart:async';

import 'package:happychinese/frontend/frontend_old/login_screen.dart';

import 'login_screen_new.dart';

class SplashScreenNew extends StatefulWidget {
  const SplashScreenNew({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreenNew> createState() => _SplashScreenNewState();
}

class _SplashScreenNewState extends State<SplashScreenNew>{

//Таймер перехода сплешера
  // @override
  // void initState() {  
  //   super.initState();  
  //   Timer(const Duration(seconds: 3),  
  //           ()=>Navigator.pushReplacement(context,  
  //           MaterialPageRoute(builder:  
  //               (context) => const LoginScreen()
  //           )  
  //        )  
  //   );  
  // }  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //переход по тапу
            body: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const LoginScreenNew()));
        },
         child:Container(
          //Настройка градиента
          //мб перенести в консты но пока хз как
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
              Colors.white,
              Colors.red,
              ],
            )
          ),
              child: const Center(
                child: Text('HAPPY CHINISE',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 35,
                  color: Color.fromARGB(255, 237, 90, 10),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
       ),
      ),
    );
  }

}