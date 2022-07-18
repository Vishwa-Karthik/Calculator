// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyButton extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;

  final butonTapped;

  MyButton(
      {required this.buttonText,
      required this.color,
      required this.textColor,
      required this.butonTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: butonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                    color: textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
