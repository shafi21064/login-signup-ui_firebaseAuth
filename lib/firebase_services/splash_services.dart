import 'dart:async';
import 'package:firebase_project/pages/login/view/log_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashServices {

  void isLogin(BuildContext context){
     Timer(const Duration(seconds: 3), ()=> Navigator.pushAndRemoveUntil(
         context, MaterialPageRoute(builder: (
         context)=> const LogIn()), (route) => false));
  }
}