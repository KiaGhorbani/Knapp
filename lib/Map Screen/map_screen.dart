import 'dart:developer';

import 'package:flutter/material.dart';

import '../Constants/myfonts.dart';
import '../Constants/widgetstates.dart';
import 'Widgets/back_button.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static List currentState = [MyWidgetState.selectOrigin];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            //Map
            Container(color: Colors.blueGrey),
            //Button For Returning To Last State
            MyBackButton(
              onPressed: () {
                setState(() {
                  if (currentState.length > 1) {
                    currentState.removeLast();
                  }
                });
              },
            ),
            //Button For Going To Next State
            buttonState(),
          ],
        ),
      ),
    );
  }

  //Switch Case For Setting The Right Widget
  Widget buttonState() {
    Widget currentWidget = selectOrigin();

    switch (currentState.last) {
      case MyWidgetState.selectOrigin:
        currentWidget = selectOrigin();
        break;
      case MyWidgetState.selectDestination:
        currentWidget = selectDestination();
        break;
      case MyWidgetState.requestDriver:
        currentWidget = requestDriver();
        break;
    }

    return currentWidget;
  }

  //Select Origin Button
  Positioned selectOrigin() {
    return Positioned(
      bottom: 20,
      left: 10,
      right: 10,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            currentState.add(MyWidgetState.selectDestination);
          });
        },
        child: Text("انتخاب مبدا", style: MyFonts.buttonText),
      ),
    );
  }

  //Select Destination Button
  Positioned selectDestination() {
    return Positioned(
      bottom: 20,
      left: 10,
      right: 10,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            currentState.add(MyWidgetState.requestDriver);
          });
        },
        child: Text("انتخاب مقصد", style: MyFonts.buttonText),
      ),
    );
  }

  //Request Driver Button
  Positioned requestDriver() {
    return Positioned(
      bottom: 20,
      left: 10,
      right: 10,
      child: ElevatedButton(
        onPressed: () {
          log("Searching For A Driver.....");
        },
        child: Text("درخواست راننده", style: MyFonts.buttonText),
      ),
    );
  }
}
