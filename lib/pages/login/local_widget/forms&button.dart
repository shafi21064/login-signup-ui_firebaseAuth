import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project/pages/forgot_pass/view/enter_mail.dart';
import 'package:firebase_project/pages/home/home.dart';
import 'package:firebase_project/pages/register/view/register.dart';
import 'package:firebase_project/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../log_in_package.dart';


class LoginFormsAndButton extends StatefulWidget {
  const LoginFormsAndButton({super.key});

  @override
  State<LoginFormsAndButton> createState() => _LoginFormsAndButtonState();
}

class _LoginFormsAndButtonState extends State<LoginFormsAndButton> {

  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _psecure = true;

  FirebaseAuth _auth = FirebaseAuth.instance;

  void passwordIsSecure (){
    _psecure = !_psecure;
  }

  void logedIn ()async{
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: emailController.text.toString(),
          password: passwordController.text.toString()
      );
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=> Home()));

    } on FirebaseAuthException catch (e) {
      print(e.code);
      if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
        Utils().toastMessage('You have entered wrong information', Colors.red);
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InputFieldWithTitle(
              fieldTitle: 'Email',
              hintText: 'Enter your email',
              errorText: 'Enter Email',
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
          TxtButton(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EnterEmail()));
            },
              buttonName: 'Forgot password?',
              fontSize: 13.sp,
              color: Colors.black.withOpacity(.3)
          ),
          CustomButton(
              buttonName: 'Login',
              onTap: (){
                if(_formKey.currentState!.validate()){
                  logedIn();
                }
              }
          )
        ],
      ),
    );
  }
}
