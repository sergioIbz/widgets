import 'package:flutter/material.dart';

const List<Color> colorList = Colors.primaries;

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(
          selectedColor >= 0 && selectedColor < colorList.length,
          'El color esta fuera de rango',
        );

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      );
}
