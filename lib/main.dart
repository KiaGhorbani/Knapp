import 'package:flutter/material.dart';
import 'package:knapp/Constants/myelevatedbutton_theme.dart';
import 'package:knapp/Map%20Screen/map_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MapScreen(),
      theme: ThemeData(
        elevatedButtonTheme: MyElevatedButtonTheme.myElevatedButton

      ),
    );
  }
}
