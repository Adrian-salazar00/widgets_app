import 'package:flutter/material.dart';


class AppTheme {
  
  static const colorList = <Color>[

    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange

  ];



  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert( selectedColor >= 0, 'Selected color must be greater then 0'),
      assert( selectedColor < colorList.length, 
      'Selected color must be less or equal then ${ colorList.length -1 } '
      );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: true
    )
  );

}