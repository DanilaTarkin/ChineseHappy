import 'package:flutter/material.dart';
import 'package:happychinese/frontend/splash_screen_new.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return const SplashScreenNew();
  }
}
