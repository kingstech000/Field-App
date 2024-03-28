import 'package:flutter/material.dart';
import 'package:interview/utilities/app_config.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.color,
      required this.child,
      required this.text});

  final Color? color;
  final Widget child;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: deviceWidth(context) * 0.18,
          height: deviceWidth(context) * 0.18,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            color: color,
          ),
          child: child,
        ),
        SizedBox(
          height: deviceWidth(context) * 0.03,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 12.5,
            fontFamily: 'NunitoSans',
            fontWeight: FontWeight.w300
          ),
        )
      ],
    );
  }
}
