import 'package:firebase_project/components/back_button.dart';
import 'package:firebase_project/pages/forgot_pass/local_widget/page_pic.dart';
import 'package:firebase_project/pages/forgot_pass/local_widget/form&button.dart';
import 'package:firebase_project/pages/forgot_pass/local_widget/email_middle_part.dart';
import 'package:flutter/material.dart';

class EnterEmail extends StatelessWidget {
  const EnterEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBackButton(onPressed: ()=> Navigator.pop(context)),
                const PagePic(
                  imageUrl: 'https://img.freepik.com/premium-vector/clueless-puzzled-thoughtful-man-forgot-password-access-denied-account-trying-log-remember_199628-437.jpg?w=1060',
                ),
                const EmailMiddlePart(),
                const ForgotPasswordEmailField()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
