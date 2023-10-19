
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../log_in_package.dart';

class FormAndButton extends StatefulWidget {
  const FormAndButton ({super.key});

  @override
  State<FormAndButton> createState() => _FormAndButtonState();
}
final _formKey = GlobalKey<FormState>();
final emailController = TextEditingController();
final passwordController = TextEditingController();

bool _secure = true;

void passwordShow(){
  _secure = !_secure ;
}


class _FormAndButtonState extends State<FormAndButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  enabled: true,
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
                validator: (value){
                  if(value!.isEmpty){
                    return 'Enter email' ;
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.h,),
              TextFormField(
                obscureText: _secure,
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r),
                      borderSide: BorderSide(color: const Color(0xfff2f2f7), width: 2.w)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r)
                  ),
                  fillColor: const Color(0xfff7f8fa),
                  filled: true,
                  suffixIcon: IconButton(
                    icon: Icon(_secure? Icons.remove_red_eye : Icons.remove_red_eye_outlined),
                    onPressed: () {
                     setState(() {
                       passwordShow();
                     });
                    },
                  )
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'Enter password' ;
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TxtButton(
                buttonName: 'Forgot password?',
                fontSize: 14,
                color: Colors.grey
            ),
          ],
        ),
        CustomButton(
          buttonName: 'Login',
          onTap: (){
            if(_formKey.currentState!.validate()){
            }
            print(emailController.text.toString());
          },
        ),
      ],
    );
  }
}
