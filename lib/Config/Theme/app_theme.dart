import 'dart:math';

import 'package:flutter/material.dart';

Color customColor = const Color.fromARGB(255, 26, 212, 197);

List<Color> colorTheme = [customColor,Colors.blue,Colors.teal,Colors.green,Colors.yellow,Colors.orange,Colors.pink];

class AppTheme {

  Random random = Random();

  ThemeData theme(){
    return ThemeData(
      useMaterial3: false,
      colorSchemeSeed: colorTheme[random.nextInt(7)]
    );
  }
}