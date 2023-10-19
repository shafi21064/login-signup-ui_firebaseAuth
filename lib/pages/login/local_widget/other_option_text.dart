import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OthersOptionText extends StatelessWidget {
  const OthersOptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 100.w,
          height: 1.h,
          color: Colors.black.withOpacity(.3),
        ),
        const Text('Or Login with'),
        Container(
          width: 100.w,
          height: 1.h,
          color: Colors.black.withOpacity(.3),
        ),
      ],
    );
  }
}
