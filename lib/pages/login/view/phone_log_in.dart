import 'package:firebase_project/pages/login/local_widget/phone_loin_forms&button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../log_in_package.dart';


class PhoneLogIn extends StatefulWidget {
  const PhoneLogIn({super.key});

  @override
  State<PhoneLogIn> createState() => _PhoneLogInState();
}

class _PhoneLogInState extends State<PhoneLogIn> {

  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          padding: EdgeInsets.all(16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(child: Logo()),
              SizedBox(height: 10.h,),
              const LoginHeader(),
              SizedBox(height: 10.h,),
              const PhoneLoginFormsAndButton()


            ],
          ),
        ),
      )
    );
  }
}
