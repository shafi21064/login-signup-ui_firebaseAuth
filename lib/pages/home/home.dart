import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project/pages/login/view/log_in.dart';
import 'package:firebase_project/utils/utils.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final auth = FirebaseAuth.instance;

  void signOut(){
    auth.signOut().then((value) {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context)=> const LogIn()), (route) => false);
      Utils().toastMessage('Loged out', Colors.red);
    }).onError((error, stackTrace) {
      debugPrint(error.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: (){
            signOut();
          },
          icon: Icon(Icons.logout_outlined, size: 50,) ,
          ),

      ),
    );
  }
}
