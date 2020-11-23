import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


var kPrimaryColor =HexColor("#ff6501");
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 25);
const kCurve = Curves.ease;
// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter the e-mail adress.";
const String kInvalidEmailError = " Invalid email adress.";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Please enter a password between 6-20 characters long (numbers and letters only).";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
