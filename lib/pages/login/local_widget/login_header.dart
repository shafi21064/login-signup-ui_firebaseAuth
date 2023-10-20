import 'package:flutter/material.dart';
import '../../../components/header_part.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const HeaderPart(
        title: 'Login',
        subTitle: 'Login to continue this app'
    );
  }
}
