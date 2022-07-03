import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//Color
Color backgroundColor = Colors.white;
Color textColor = Colors.black;
Color backgroundGrey = const Color.fromRGBO(232, 233, 243, 1);
Color backgroundCamera = const Color.fromRGBO(42, 60, 68, 1);
Color appColor = const Color.fromRGBO(29, 32, 136, 1);
Color labelTextFieldColor = const Color.fromRGBO(0, 0, 0, 0.6);
Color hintTextFieldColor = const Color.fromRGBO(0, 0, 0, 0.12);
Color termTextColor = const Color.fromRGBO(95, 108, 114, 1);

//Font
String fontSF = 'SF Pro Text';
String fontNoto = 'Noto Sans JP';
String fontRoboto = 'Roboto';

//TextStyle
TextStyle? appBarTextStyle = TextStyle(
  color: textColor,
  fontSize: 17,
  fontWeight: FontWeight.w400,
  fontFamily: fontSF,
);

TextStyle popUpTitleStyle = TextStyle(
  decoration: TextDecoration.none,
  color: textColor,
  fontSize: 14,
  fontWeight: FontWeight.w600,
  fontFamily: fontNoto,
);

TextStyle popUpTextStyle = TextStyle(
  decoration: TextDecoration.none,
  color: textColor,
  fontSize: 14,
  fontWeight: FontWeight.w400,
  fontFamily: fontNoto,
);

TextStyle buttonBGTextStyle = TextStyle(
  decoration: TextDecoration.none,
  color: appColor,
  fontSize: 15,
  fontWeight: FontWeight.w600,
  fontFamily: fontSF,
);

TextStyle buttonTextStyle = TextStyle(
  decoration: TextDecoration.none,
  color: backgroundColor,
  fontSize: 17,
  fontWeight: FontWeight.w600,
  fontFamily: fontSF,
);

TextStyle profileTextStyle = TextStyle(
  decoration: TextDecoration.none,
  color: textColor,
  fontSize: 13,
  fontWeight: FontWeight.w600,
  fontFamily: fontSF,
);

TextStyle noteTextStyle = TextStyle(
  decoration: TextDecoration.none,
  color: labelTextFieldColor,
  fontFamily: fontNoto,
  fontWeight: FontWeight.w400,
  fontSize: 10
);

  //text field
TextStyle labelTextStyle = TextStyle(
  decoration: TextDecoration.none,
  color: labelTextFieldColor,
  fontSize: 12,
  fontWeight: FontWeight.w400,
  fontFamily: fontRoboto,
);

TextStyle hintTextStyle = TextStyle(
  decoration: TextDecoration.none,
  color: hintTextFieldColor,
  fontSize: 14,
  fontWeight: FontWeight.w500,
  fontFamily: fontNoto,
);

TextStyle textFieldStyle = TextStyle(
  decoration: TextDecoration.none,
  color: textColor,
  fontSize: 14,
  fontWeight: FontWeight.w500,
  fontFamily: fontNoto,
  height: 1.5,
);

TextStyle termTextStyle = TextStyle(
  decoration: TextDecoration.none,
  color: termTextColor,
  fontSize: 12,
  fontWeight: FontWeight.w400,
  fontFamily: fontNoto
);

TextStyle textCheckBoxStyle = TextStyle(
  decoration: TextDecoration.none,
  color: appColor,
  fontFamily: fontNoto,
  fontWeight: FontWeight.w700,
  fontSize: 14,
);