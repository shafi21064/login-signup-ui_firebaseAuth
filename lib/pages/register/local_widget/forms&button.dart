import 'package:firebase_project/pages/forgot_pass/view/enter_mail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../register_package.dart';


class RegisterFormsAndButton extends StatefulWidget {
  const RegisterFormsAndButton({super.key});

  @override
  State<RegisterFormsAndButton> createState() => _RegisterFormsAndButtonState();
}

class _RegisterFormsAndButtonState extends State<RegisterFormsAndButton> {

  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool _psecure = true, _cpSecure = true;


  void passwordIsSecure (){
    _psecure = !_psecure;
  }
  void cPasswordIsSecure (){
    _psecure = !_psecure;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InputFieldWithTitle(
              fieldTitle: 'Username',
              hintText: 'Enter your name',
              errorText: 'Enter name',
              obsecureText: false,
              controller: usernameController
          ),
          InputFieldWithTitle(
              fieldTitle: 'Email',
              hintText: 'Enter your email',
              errorText: 'Enter email',
              obsecureText: false,
              controller: emailController),
          InputFieldWithTitle(
              fieldTitle: 'Password',
              hintText: 'Enter your password',
              errorText: 'Enter password',
              obsecureText: _psecure,
              controller: passwordController,
            suffixIcon: IconButton(
              icon:Icon(_psecure? Icons.remove_red_eye : Icons.remove_red_eye_outlined),
              onPressed: (){
              setState(() {
                passwordIsSecure();
              });
            },),
          ),
          InputFieldWithTitle(
            fieldTitle: 'Password',
            hintText: 'Enter confirm password',
            errorText: 'Enter password again',
            obsecureText: _cpSecure,
            controller: confirmPasswordController,
            suffixIcon: IconButton(
              icon:Icon(_cpSecure? Icons.remove_red_eye : Icons.remove_red_eye_outlined),
              onPressed: (){
                setState(() {
                  cPasswordIsSecure();
                });
              },),
          ),

          CustomButton(
              buttonName: 'Login',
              onTap: (){
                if(_formKey.currentState!.validate()){

                }
              }
          )
        ],
      ),
    );
  }
}
