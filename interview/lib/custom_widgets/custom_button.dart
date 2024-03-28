import 'package:flutter/material.dart';
import 'package:interview/utilities/app_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton( 
      {super.key,
      required this.color,
      required this.text,
      required this.borderColor,
      required this.textColor, required this.onpressed});

  final Color color;
  final Color borderColor;
  final String text;
  final Color textColor;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width: deviceWidth(context) * 0.3,
        height: deviceWidth(context) * 0.1,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(width: 1, color: borderColor),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: deviceWidth(context) * 0.04),
        )),
      ),
    );
  }
}
