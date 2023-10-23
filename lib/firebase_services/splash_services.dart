import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project/pages/home/home.dart';
import 'package:firebase_project/pages/login/view/log_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashServices {

  void isLogin(BuildContext context){

    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;

    if(user != null){
      Timer(Duration(seconds: 3),
              ()=> Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (context)=> const Home()), (route) => false));
    }else{
      Timer(Duration(seconds: 3),
          ()=> Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
              builder: (context)=> const LogIn()), (route) => false));
    }
  }
}