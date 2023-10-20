import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 30.w,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black.withOpacity(.2),),
        borderRadius: BorderRadius.circular(5.r)
      ),
      child: Center(
        child: IconButton(
          icon:  Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black.withOpacity(.5),),
          onPressed: (){
            Navigator.pop(context);
          },),
      ),
    );
  }
}
