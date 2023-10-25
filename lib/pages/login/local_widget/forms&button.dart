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
  bool _loading = false;

  FirebaseAuth _auth = FirebaseAuth.instance;

  void passwordIsSecure (){
    _psecure = !_psecure;
  }

  void login()async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.toString(),
          password: passwordController.text.toString()
      );
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Home()), (route) => false);
      Utils().toastMessage('Loged In', Colors.green);
    } on FirebaseAuthException catch (e) {

      if(e.code.toString() == 'INVALID_LOGIN_CREDENTIALS') {
        Utils().toastMessage('Wrong email or password', Colors.red);
      }else if(e.code.toString() == 'invalid-email'){
        Utils().toastMessage('invalid email', Colors.red);
      }
      setState(() {
        _loading = false;
      });
      debugPrint(e.code);
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
              color: Colors.black.withOpacity(.3),
          ),
          CustomButton(
            loading: _loading,
              buttonName: 'Login',
              onTap: (){
                if(_formKey.currentState!.validate()){
                  setState(() {
                    _loading = true ;
                  });
                  login();
                }
              }
          )
        ],
      ),
    );
  }
}
