import 'package:firebase_project/components/back_button.dart';
import 'package:firebase_project/components/buttons.dart';
import 'package:firebase_project/pages/forgot_pass/local_widget/otp_field.dart';
import 'package:firebase_project/pages/forgot_pass/local_widget/otp_middle_part.dart';
import 'package:firebase_project/pages/forgot_pass/local_widget/page_pic.dart';
import 'package:firebase_project/pages/forgot_pass/local_widget/resent_button.dart';
import 'package:firebase_project/pages/forgot_pass/view/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

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
                    imageUrl: 'https://www.web2sms.co.in/wp-content/uploads/2020/05/otpa-1024x948.png',
                  ),
                  const OtpMiddlePart(),
                  SizedBox(height: 20.h,),
                  OtpField(),
                  CustomButton(buttonName: 'Verify',
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ResetPassword()))),
                  const ResendButton()
                ],
              ),
            ),
          )
      ),
    );
  }
}
