import 'package:flutter/material.dart';
import '../log_in_package.dart';

class HeaderPart extends StatelessWidget {
  const HeaderPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(
          titleText: 'Login',
          fontSize: 25,
          color: Colors.black,
        ),
        TitleText(
          titleText: 'Login to continue this app',
          fontSize: 14,
          color: Colors.grey,
        ),
      ],
    );
  }
}
