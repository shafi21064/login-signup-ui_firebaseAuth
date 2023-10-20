import 'package:firebase_project/components/buttons.dart';
import 'package:firebase_project/components/input_field_with_title.dart';
import 'package:flutter/material.dart';

class ResetFormAndButton extends StatefulWidget {
  const ResetFormAndButton({super.key});

  @override
  State<ResetFormAndButton> createState() => _ResetFormAndButtonState();
}

class _ResetFormAndButtonState extends State<ResetFormAndButton> {

  final _formKey = GlobalKey<FormState>();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool _newPasswordSecure = true;
  bool _confirmPasswordSecure = true;

  void isPasswordSecure(){
    _newPasswordSecure = !_newPasswordSecure ;
  }
  void isConfirmPasswordSecure (){
    _confirmPasswordSecure = !_confirmPasswordSecure ;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          InputFieldWithTitle(
              fieldTitle: 'New password',
              hintText: 'Enter password',
              errorText: 'Enter password',
              obsecureText: _newPasswordSecure,
              controller: newPasswordController,
            suffixIcon: IconButton(
              icon: Icon(_newPasswordSecure? Icons.remove_red_eye : Icons.remove_red_eye_outlined),
              onPressed: (){
                setState(() {
                  isPasswordSecure();
                });
              },
            ),
          ),
          InputFieldWithTitle(
              fieldTitle: 'Confirm password',
              hintText: 'Enter confirm password',
              errorText: 'Enter password again',
              obsecureText: _confirmPasswordSecure,
              controller: confirmPasswordController,
            suffixIcon: IconButton(
              icon: Icon(_confirmPasswordSecure? Icons.remove_red_eye : Icons.remove_red_eye_outlined),
              onPressed: (){
                setState(() {
                  isConfirmPasswordSecure();
                });
              },
            ),
          ),
          CustomButton(
              buttonName: 'Reset Password',
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
