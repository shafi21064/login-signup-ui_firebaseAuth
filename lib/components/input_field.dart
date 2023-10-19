import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final bool obsecureText;
  final dynamic validator;
  final TextEditingController controller;
  const InputField({
    super.key,
    required this.hintText,
    required this.obsecureText,
    required this.validator,
    required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: TextFormField(
        controller: controller,
        obscureText: obsecureText,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
            borderSide: BorderSide(color: const Color(0xfff2f2f7), width: 2.w)
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r)
          ),
          fillColor: const Color(0xfff7f8fa),
          filled: true,
        ),
      ),
    );
  }
}
