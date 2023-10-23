import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project/components/buttons.dart';
import 'package:firebase_project/components/input_field_with_title.dart';
import 'package:firebase_project/pages/forgot_pass/view/otp.dart';
import 'package:firebase_project/pages/forgot_pass/view/success.dart';
import 'package:firebase_project/utils/utils.dart';
import 'package:flutter/material.dart';

class ForgotPasswordEmailField extends StatefulWidget {
  const ForgotPasswordEmailField({super.key});

  @override
  State<ForgotPasswordEmailField> createState() => _ForgotPasswordEmailFieldState();
}

class _ForgotPasswordEmailFieldState extends State<ForgotPasswordEmailField> {

  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  bool _loading = false;

  final _auth = FirebaseAuth.instance;

  void passwordReset() async {
    setState(() {
      _loading = true ;
    });
    try{
      await _auth.sendPasswordResetEmail(
          email: emailController.text.toString()
      );
      Navigator.push(context, MaterialPageRoute(builder: (context)=> SuccessMessage()));
      setState(() {
        _loading = false;
      });
    }on FirebaseAuthException catch(e){
      setState(() {
        _loading = false;
      });
      debugPrint(e.message.toString());
      Utils().toastMessage(e.message.toString(), Colors.red);
    }
  }

  // void passwordReset(){
  //   _auth.sendPasswordResetEmail(email: emailController.text.toString()
  //   ).then((value) {
  //     Utils().toastMessage('moved', Colors.red);
  //   }).onError((error, stackTrace){
  //     debugPrint(error.toString());
  //   });
  // }

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
              loading: _loading,
              onTap: (){
                if(_formKey.currentState!.validate()){
                  passwordReset();
                }
              })
        ],
      ),
    );
  }
}
