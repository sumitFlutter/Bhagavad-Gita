import 'package:flutter/material.dart';

ThemeData light=ThemeData(brightness: Brightness.light,
  colorSchemeSeed:  Color(0xffd27a16),
  appBarTheme: AppBarTheme(color:  Color(0xffd27a16),titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black))
);
ThemeData dark=ThemeData(brightness: Brightness.dark,
  appBarTheme: AppBarTheme(color:  Color(0xffd27a16),titleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),),
  colorSchemeSeed:  Color(0xffd27a16),
);