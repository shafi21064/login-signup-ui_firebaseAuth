import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PagePic extends StatelessWidget {
  final String imageUrl;
  const PagePic({
    super.key,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(16),
        height: 250.h,
        width: 250.w,
          child: Image.network(imageUrl,
          fit: BoxFit.cover,
          ),
      ),
    );
  }
}
