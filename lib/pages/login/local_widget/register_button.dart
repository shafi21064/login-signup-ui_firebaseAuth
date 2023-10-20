import 'package:firebase_project/pages/register/view/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../log_in_package.dart';


class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TitleText(
            titleText: "Didn't have an account?",
            fontSize: 13.sp,
            color: Colors.black.withOpacity(.5)),
        SizedBox(width: 5.w,),
        TxtButton(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Register()));
          },
            buttonName: 'Register',
            fontSize: 13.sp,
            color: Colors.blue
        )
      ],
    );
  }
}
