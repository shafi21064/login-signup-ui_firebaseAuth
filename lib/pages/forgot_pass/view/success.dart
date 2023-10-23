import 'package:firebase_project/components/buttons.dart';
import 'package:firebase_project/components/header_part.dart';
import 'package:firebase_project/components/title_text.dart';
import 'package:firebase_project/pages/login/view/log_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessMessage extends StatelessWidget {
  const SuccessMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height:  100.h,
                  width: 100.w,
                  child: Image.network(
                      'https://t4.ftcdn.net/jpg/03/52/50/45/360_F_352504511_nfrXzNZTUTdRBcHDmq1KfXjudk5hL9bz.jpg'
                  )),
               TitleText(
                  titleText: 'Email has been sent',
                  fontSize: 25.sp,
                  color: Colors.black
               ),
              Text(
                  "we've sent yu a mail to your Email account. please check and reset your Password",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall
              ),
            SizedBox(height: 20.h,),
              CustomButton(
                  buttonName: 'Back to Login',
                  onTap: (){
                    Navigator.pushAndRemoveUntil(
                        context,MaterialPageRoute(builder: (context)=> LogIn()),
                            (route) => false);
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
