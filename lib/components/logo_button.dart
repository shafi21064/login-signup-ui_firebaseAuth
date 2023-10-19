import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoButton extends StatelessWidget {
  final String imgUrl;
  const LogoButton({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 70.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r)
      ),
      child: Image.network(imgUrl),
    );
  }
}
