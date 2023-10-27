import 'package:firebase_project/components/back_button.dart';
import 'package:firebase_project/pages/login/local_widget/otp_field.dart';
import 'package:firebase_project/pages/login/local_widget/otp_middle_part.dart';
import 'package:firebase_project/components/page_pic.dart';
import 'package:firebase_project/pages/forgot_pass/local_widget/resent_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Otp extends StatelessWidget {
  final String verificationId;
  const Otp({super.key, required this.verificationId});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBackButton(onPressed: () => Navigator.pop(context),),
                  const PagePic(
                    imageUrl: 'assets/images/otpp.png',
                  ),
                  const OtpMiddlePart(),
                  SizedBox(height: 20.h,),
                  OtpField(
                    varificationId: verificationId,
                  ),
                  const ResendButton()
                ],
              ),
            ),
          )
      ),
    );
  }
}
