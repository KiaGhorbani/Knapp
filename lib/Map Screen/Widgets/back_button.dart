import 'package:flutter/material.dart';

import '../../Constants/mydimensions.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key, required this.onPressed});
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MyDimension.medium,
      left: MyDimension.medium,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(2, 3),
              blurRadius: 18,
            ),
          ],
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_back)),
      ),
    );
  }
}
