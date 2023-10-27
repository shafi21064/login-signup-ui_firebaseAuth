import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project/firebase_services/facebook_service.dart';
import 'package:firebase_project/firebase_services/google_signin.dart';
import 'package:firebase_project/pages/home/home.dart';
import 'package:firebase_project/pages/login/view/phone_log_in.dart';
import 'package:firebase_project/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../log_in_package.dart';

class OtherOptions extends StatelessWidget {
  const OtherOptions({super.key});

  facebookTapWork(context)async{
    try{
      await FacebookAuthService().signInWithFacebook();

      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Home()), (route) => false);
      Utils().toastMessage('Loged in', Colors.green);
    }on FirebaseAuthException catch(e){
      print(e.credential);
      Utils().toastMessage(e.toString(), Colors.red);
    }
  }


  googleTapWork(context) async {
    try{
      await GoogleAuthService().googleSignIn();

      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Home()), (route) => false);
      Utils().toastMessage('Loged in', Colors.green);
    }on FirebaseAuthException catch(e){
      print(e.credential);
      Utils().toastMessage(e.toString(), Colors.red);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 70.h,
      //color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // LogoButton(
          //   onTap: (){
          //     facebookTapWork(context);
          //   },
          //     imgUrl: 'assets/icons/facebook.png'
          // ),
          LogoButton(onTap: (){
            googleTapWork(context);
          },
              imgUrl: 'assets/icons/email.png'),
          LogoButton(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const PhoneLogIn()));
              },
              imgUrl: 'assets/icons/phone-call.png')

        ],
      ),
    );
  }
}
