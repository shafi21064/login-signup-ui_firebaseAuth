import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      child: Image.network('https://png.pngitem.com/pimgs/s/248-2488288_transparent-shopping-centre-clipart-transparent-background-shopping-cart.png'),
    );
  }
}
