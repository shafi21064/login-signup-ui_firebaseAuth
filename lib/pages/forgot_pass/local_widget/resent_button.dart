import 'package:firebase_project/components/title_text.dart';
import 'package:firebase_project/components/txt_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResendButton extends StatelessWidget {
  const ResendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TitleText(
            titleText: "Didn't received code?",
            fontSize: 13.sp,
            color: Colors.black.withOpacity(.5)),
        SizedBox(width: 5.w,),
        TxtButton(
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=> Register()));
            },
            buttonName: 'Resend',
            fontSize: 13.sp,
            color: Colors.blue
        )
      ],
    );
  }
}
