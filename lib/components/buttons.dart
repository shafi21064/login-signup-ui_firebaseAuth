import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTap;
  final bool loading;
  const CustomButton({
    super.key,
    required this.buttonName,
    required this.onTap,
    this.loading = false

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        height: 50.h,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: const Color(0xff0265ff),
          borderRadius: BorderRadius.circular(25.r)
        ),
        child: loading? const CircularProgressIndicator( color: Colors.white, strokeWidth: 3,) :
        Text(
          buttonName,
          style: TextStyle(
              fontSize: 17.sp,
              color: Colors.white
          ),),
      ),
    );
  }
}
