import 'package:firebase_project/components/input_field_with_title.dart';
import 'package:flutter/material.dart';

class EmailField extends StatefulWidget {
 EmailField({super.key});

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
 final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return InputFieldWithTitle(
      controller: emailController,
        fieldTitle: 'Email',
        hintText: 'Enter your email',
        validator: (){},
        obsecureText: false
    );
  }
}
