import 'package:firebase_project/components/input_field.dart';
import 'package:firebase_project/components/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputFieldWithTitle extends StatelessWidget {
  final String fieldTitle, hintText, errorText;
  final bool obsecureText;
  final TextEditingController controller;
  final IconButton? suffixIcon;
  const InputFieldWithTitle({
    super.key,
    required this.fieldTitle,
    required this.hintText,
    required this.errorText,
    required this.obsecureText,
    required this.controller,
    this.suffixIcon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText(
              titleText: fieldTitle,
              fontSize: 16.sp,
              color: Colors.black
          ),
          SizedBox(height: 10.h,),
          InputField(
            controller: controller,
              hintText: hintText,
            obsecureText: obsecureText,
            errorText: errorText,
            suffixIcon: suffixIcon,
          )
        ],
      ),
    );
  }
}
