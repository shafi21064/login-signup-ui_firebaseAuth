import 'package:flutter/material.dart';
import '../register_package.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBackButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
                const Center(child: Logo()),
                const RegisterHeader(),
                const RegisterFormsAndButton()
              ],
            ),
          ),
        ),
      )
    );
  }
}
