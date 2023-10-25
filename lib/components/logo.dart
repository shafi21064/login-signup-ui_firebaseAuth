import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        height: 100.h,
        width: 100.w,
        child: Image.asset('assets/icons/logo.png'),
      ),
    );
  }
}
