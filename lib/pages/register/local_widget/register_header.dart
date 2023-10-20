import 'package:flutter/material.dart';
import '../register_package.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const HeaderPart(
        title: 'Register',
        subTitle: 'Enter your personal Information'
    );
  }
}
