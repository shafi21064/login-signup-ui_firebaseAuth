import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project/pages/login/view/otp.dart';
import 'package:firebase_project/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../log_in_package.dart';

class PhoneLoginFormsAndButton extends StatefulWidget {
  const PhoneLoginFormsAndButton({super.key});

  @override
  State<PhoneLoginFormsAndButton> createState() => _PhoneLoginFormsAndButtonState();
}

class _PhoneLoginFormsAndButtonState extends State<PhoneLoginFormsAndButton> {

  Country selectedCountry = Country(
      phoneCode: '880',
      countryCode: 'BD',
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: 'Bangladesh',
      example: 'Bangladesh',
      displayName: 'Bangladesh',
      displayNameNoCountryCode: 'BD',
      e164Key: '');
    final _formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
   bool _loading = false;
    String? phoneNUmber;


  String get completeNumber {
    return '+${selectedCountry.phoneCode+phoneController.text}';
  }



  verifyWithPhone()async {

      await _auth.verifyPhoneNumber(
        phoneNumber: completeNumber,
          verificationCompleted: (_){
          setState(() {
            _loading = false;
          });
          },
          verificationFailed: (e){
          print('this is code ${e.code} ;;');
          if(e.code == 'app-not-authorized'){
          Utils().toastMessage('This is not authorised', Colors.red);
          }else if(e.code == 'invalid-phone-number'){
            Utils().toastMessage('invalid phone number', Colors.red);
          }
          setState(() {
            _loading = false;
          });
          },
          codeSent: (String verificationId, int? token ){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Otp(verificationId: verificationId,)));
          setState(() {
            _loading = false;
          });
          },
          codeAutoRetrievalTimeout: (e){
          Utils().toastMessage('time out, please try again', Colors.red);
          setState(() {
            _loading = false ;
          });
          }
      );
    }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: phoneController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'Enter your phone number',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.r),
                borderSide: BorderSide(color: const Color(0xfff2f2f7), width: 2.w)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.r)
            ),
            fillColor: const Color(0xfff7f8fa),
            filled: true,
            prefixIcon: Container(
              padding: EdgeInsets.all(8.w),
              child: InkWell(
                onTap: (){
                  showCountryPicker(
                    countryListTheme: CountryListThemeData(
                      bottomSheetHeight: 400.h
                    ),
                    context: context,
                    showPhoneCode: true, // optional. Shows phone code before the country name.
                    onSelect: (Country country) {
                      setState(() {
                        selectedCountry = country;
                      });
                      print('Select country: ${country.displayName}');
                    },
                  );
                },
                child: Text('${selectedCountry.flagEmoji} +${selectedCountry.phoneCode} |',
                  style: TextStyle(
                    fontSize: 18.sp
                  ),
                ),
              ),
            )
          )
        ),


        CustomButton(
            loading: _loading,
            buttonName: 'Send code',
            onTap: (){
              setState(() {
                _loading = true;
              });
               verifyWithPhone();
            }
        )
      ],
    );
  }
}
