import 'package:flutter/material.dart';

import 'core/theme.dart';
import 'core/navigation.dart';

void main() {
  runApp(MaterialApp(
      theme: basicTheme,
      debugShowCheckedModeBanner: false,
      home: const Navigation()));
}
