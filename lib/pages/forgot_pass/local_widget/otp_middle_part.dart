import 'package:firebase_project/components/header_part.dart';
import 'package:firebase_project/components/title_text.dart';
import 'package:flutter/material.dart';

class OtpMiddlePart extends StatelessWidget {
  const OtpMiddlePart({super.key});

  @override
  Widget build(BuildContext context) {
    return const HeaderPart(
        title: 'OTP Verification',
        subTitle: 'Enter the verification code we just sent on your email address');
  }
}
