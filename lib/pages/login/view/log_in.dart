
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../log_in_package.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(child: Logo()),
                  SizedBox(height: 10.h,),
                  const HeaderPart(),
                  SizedBox(height: 16.h,),
                  const FormAndButton(),
                   const OthersOptionText(),
                  SizedBox(height: 10.h,),
                  const OtherOptions(),
                  SizedBox(height: 16.h,),
                  const RegisterButton()
                ],
              ),
            )),
      ),
    );
  }
}
