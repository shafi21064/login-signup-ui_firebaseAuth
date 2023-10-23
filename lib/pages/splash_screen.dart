import 'package:firebase_project/firebase_services/splash_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices splashScreen = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreen.isLogin(context);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Image.network('https://medallionretail.com/2017/wp-content/uploads/2021/07/iStock-1188158110_RGB-600x385.jpg')


      ),
    );
  }
}
