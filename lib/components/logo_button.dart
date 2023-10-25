import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoButton extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onTap;
  const LogoButton({
    super.key,
    required this.imgUrl,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40.h,
        width: 70.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r)
        ),
        child: Image.asset(imgUrl),
      ),
    );
  }
}
