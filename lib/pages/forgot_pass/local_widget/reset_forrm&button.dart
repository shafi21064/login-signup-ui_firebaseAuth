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
              obsecureText: false,
              controller: newPasswordController
          ),
          InputFieldWithTitle(
              fieldTitle: 'Confirm password',
              hintText: 'Enter confirm password',
              errorText: 'Enter password again',
              obsecureText: false,
              controller: confirmPasswordController
          ),
          CustomButton(
              buttonName: 'Reset Password',
              onTap: (){}
          )
        ],
      ),
    );
  }
}
