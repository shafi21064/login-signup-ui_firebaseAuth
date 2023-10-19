import 'package:firebase_project/components/title_text.dart';
import 'package:flutter/material.dart';

class TxtButton extends StatelessWidget {
  final String buttonName;
  final double fontSize;
  final Color color;
   dynamic onTap;
   TxtButton({super.key,
    required this.buttonName,
    required this.fontSize,
    required this.color,
     this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: TitleText(
          titleText: buttonName,
          fontSize: fontSize,
          color: color),
    );
  }
}
