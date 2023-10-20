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

  void passwordIsSecure (){
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
              fieldTitle: 'Email',
              hintText: 'Enter your Mail',
              errorText: 'Enter Email',
              obsecureText: false,
              controller: emailController),
          InputFieldWithTitle(
              fieldTitle: 'Password',
              hintText: 'Enter your Mail',
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
              buttonName: 'Forgot password?',
              fontSize: 13.sp,
              color: Colors.black.withOpacity(.3)
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
