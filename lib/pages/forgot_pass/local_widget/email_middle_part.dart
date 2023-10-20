import 'package:firebase_project/components/header_part.dart';
import 'package:flutter/material.dart';

class EmailMiddlePart extends StatelessWidget {
  const EmailMiddlePart({super.key});

  @override
  Widget build(BuildContext context) {
    return const HeaderPart(
        title: 'Forgot Password?',
        subTitle: "Don't worry! It occurs. Please enter the email address linked with your account."
    );
  }
}
