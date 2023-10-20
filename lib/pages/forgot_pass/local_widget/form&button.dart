import 'package:firebase_project/components/buttons.dart';
import 'package:firebase_project/components/input_field_with_title.dart';
import 'package:firebase_project/pages/forgot_pass/view/otp.dart';
import 'package:flutter/material.dart';

class ForgotPasswordEmailField extends StatefulWidget {
  const ForgotPasswordEmailField({super.key});

  @override
  State<ForgotPasswordEmailField> createState() => _ForgotPasswordEmailFieldState();
}

class _ForgotPasswordEmailFieldState extends State<ForgotPasswordEmailField> {

  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
           InputFieldWithTitle(
              fieldTitle: 'Email',
              hintText: 'Enter your Email',
              errorText: 'Enter email',
              obsecureText: false,
              controller: emailController
          ),
          CustomButton(
              buttonName: 'Send Code',
              onTap: (){
                if(_formKey.currentState!.validate()){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Otp()));
                }
              })
        ],
      ),
    );
  }
}
