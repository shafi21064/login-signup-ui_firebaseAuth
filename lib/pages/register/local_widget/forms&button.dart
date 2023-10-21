import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_project/pages/login/view/log_in.dart';
import 'package:firebase_project/utils/utils.dart';
import 'package:flutter/material.dart';
import '../register_package.dart';
import 'package:fluttertoast/fluttertoast.dart';


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
  bool loading = false;

  FirebaseAuth _auth = FirebaseAuth.instance;

  void passwordIsSecure (){
    _psecure = !_psecure;
  }
  void cPasswordIsSecure (){
    _cpSecure = !_cpSecure;
  }


@override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
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
              buttonName: 'Register',
              loading: loading,
              onTap: ()async {
                if(_formKey.currentState!.validate()){
                  if(passwordController.text.toString() == confirmPasswordController.text.toString()){
                    setState(() {
                      loading = true;
                    });

                    try {
                      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
                          email: emailController.text.toString(),
                          password: passwordController.text.toString()
                      );
                      setState(() {
                        loading = false ;
                      });
                      Utils().toastMessage('Successfully registered', Colors.green);
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (context)=> const LogIn()), (route) => false);
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        Utils().toastMessage('${e.message}', Colors.red);
                      } else if (e.code == 'email-already-in-use') {
                        print('The account already exists for that email.');
                        Utils().toastMessage('${e.message}', Colors.red);
                      }
                      setState(() {
                        loading = false ;
                      });
                    } catch (e) {
                      print(e);
                    }
                  } else {
                     return Utils().toastMessage("Password didn't match", Colors.red);
                  }
                }
              }
          )
        ],
      ),
    );
  }
}
