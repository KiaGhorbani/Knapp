import 'package:flutter/material.dart';
import 'package:knapp/Constants/mydimensions.dart';

class MyElevatedButtonTheme {
  static ElevatedButtonThemeData myElevatedButton = ElevatedButtonThemeData(
    style: ButtonStyle(
      fixedSize: WidgetStatePropertyAll(Size(double.infinity, 58)),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MyDimension.medium),
        ),
      ),
      elevation: WidgetStatePropertyAll(0),
      backgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return Color.fromARGB(255, 82, 255, 111);
        }

        return Color.fromARGB(255, 2, 207, 36);
      }),
    ),
  );
}
