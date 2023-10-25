import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project/pages/home/home.dart';
import 'package:firebase_project/pages/login/view/log_in.dart';
import 'package:firebase_project/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../log_in_package.dart';

class OtpField extends StatefulWidget {
  final String varificationId;
  const OtpField({super.key, required this.varificationId});

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {

  final firstFieldController = TextEditingController();
  final secondFieldController = TextEditingController();
  final thirdFieldController = TextEditingController();
  final fourthFieldController = TextEditingController();
  final fifthFieldController = TextEditingController();
  final sixthFieldController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool _loading = false;

   String get smsCode{
    return '${firstFieldController.text+
        secondFieldController.text+
        thirdFieldController.text+
        fourthFieldController.text+
     fifthFieldController.text+
     sixthFieldController.text
     }';
  }

  loginWithPhone() async{
    final userCredential = PhoneAuthProvider.credential(
        verificationId: widget.varificationId,
        smsCode: smsCode
    );
    try{
      await _auth.signInWithCredential(userCredential);
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Home()), (route) => false);
      Utils().toastMessage('Loged in', Colors.green);
      setState(() {
        _loading = false;
      });
    }on FirebaseAuthException catch(e){
      print(e.credential);
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                height: 50.h,
                width: 50.w,
                child: TextField(
                  controller: firstFieldController,
                  onChanged: (value){
                    if(value.length == 1){
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.headlineMedium,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Colors.blue, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(.3), width: 2))),
                )),

            SizedBox(
                height: 50.h,
                width: 50.w,
                child: TextField(
                  controller: secondFieldController,
                  onChanged: (value){
                    if(value.length == 1){
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.headlineMedium,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Colors.blue, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(.3), width: 2))),
                )),

            SizedBox(
                height: 50.h,
                width: 50.w,
                child: TextField(
                  controller: thirdFieldController,
                  onChanged: (value){
                    if(value.length == 1){
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.headlineMedium,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Colors.blue, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(.3), width: 2))),
                )),
            SizedBox(
                height: 50.h,
                width: 50.w,
                child: TextField(
                  controller: fourthFieldController,
                  onChanged: (value){
                    if(value.length == 1){
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.headlineMedium,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Colors.blue, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(.3), width: 2))),
                )),
            SizedBox(
                height: 50.h,
                width: 50.w,
                child: TextField(
                  controller: fifthFieldController,
                  onChanged: (value){
                    if(value.length == 1){
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.headlineMedium,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Colors.blue, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(.3), width: 2))),
                )),
            SizedBox(
                height: 50.h,
                width: 50.w,
                child: TextField(
                  controller: sixthFieldController,
                  onChanged: (value){
                    if(value.length == 1){
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  style: Theme.of(context).textTheme.headlineMedium,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Colors.blue, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(.3), width: 2))),
                )),
          ],
        ),

        CustomButton(
            buttonName: 'Verify',
            loading: _loading,
            onTap:(){
              setState(() {
                _loading = true;
              });
              loginWithPhone();
              print(smsCode);
            }
        ),
      ],
    );
  }
}
