import 'package:flutter/material.dart';
import '../pages/login/log_in_package.dart';

class HeaderPart extends StatelessWidget {
  final String title, subTitle;
  const HeaderPart({
    super.key,
    required this.title,
    required this.subTitle
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(
          titleText: title,
          fontSize: 25,
          color: Colors.black,
        ),
        TitleText(
          titleText: subTitle,
          fontSize: 14,
          color: Colors.grey,
        ),
      ],
    );
  }
}
