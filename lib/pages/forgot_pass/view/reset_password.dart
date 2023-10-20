import 'package:firebase_project/components/back_button.dart';
import 'package:firebase_project/pages/forgot_pass/local_widget/reset_forrm&button.dart';
import 'package:firebase_project/pages/forgot_pass/local_widget/reset_header_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBackButton(onPressed: ()=> Navigator.pop(context)),
                SizedBox(height: 20.h,),
                const ResetHeaderPart(),
                SizedBox(height: 20.h,),
                const ResetFormAndButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
