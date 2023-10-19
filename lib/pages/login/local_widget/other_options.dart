import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../log_in_package.dart';

class OtherOptions extends StatelessWidget {
  const OtherOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 70.h,
      //color: Colors.black,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LogoButton(imgUrl: 'https://w7.pngwing.com/pngs/201/462/png-transparent-computer-icons-facebook-facebook-logo-black-and-white-symbol-thumbnail.png'),
          LogoButton(imgUrl: 'https://cdn.icon-icons.com/icons2/2428/PNG/512/gmail_black_logo_icon_147126.png'),
          LogoButton(imgUrl: 'https://cdn.icon-icons.com/icons2/3261/PNG/512/apple_logo_icon_206799.png')

        ],
      ),
    );
  }
}
