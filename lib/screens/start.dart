import 'package:flutter/material.dart';
import 'package:home_project/constant/constant.dart';
import 'package:home_project/widgets/button_custom.dart';

class StartMain extends StatelessWidget {
  const StartMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sWidth = MediaQuery.of(context).size.width / 375;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: StartScreen(
        sWidth: sWidth,
      ),
    );
  }
}

class StartScreen extends StatelessWidget {
  late double sWidth;

  StartScreen({required this.sWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      width: sWidth * 375,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: sWidth,
            height: sWidth * 378,
          ),
          Image.asset('assets/images/ookini_logo_1.png'),
          SizedBox(
            width: sWidth,
            height: sWidth * 201,
          ),
          SizedBox(
            width: sWidth * 60,
            height: sWidth * 6,
            child: row4Circle(),
          ),
          SizedBox(
            height: sWidth * 11,
            width: sWidth,
          ),
          ButtonCustom(
            bWidth: sWidth * 342,
            bHeight: sWidth * 46,
            bTitle: '新しく始める（無料）',
            onTap: () {
              //navigator
            },
            bColor: appColor,
            bTextStyle: buttonTextStyle,
          ),
          SizedBox(
            width: sWidth,
            height: sWidth * 19,
          ),
          ButtonCustom(
            bHeight: sWidth * 46,
            bWidth: sWidth * 342,
            onTap: () {
              //navigator
            },
            bTitle: 'すでに登録されている方はこちら',
            bColor: backgroundColor,
            bTextStyle: buttonTextAppColorStyle,
          ),
          SizedBox(
            width: sWidth,
            height: sWidth * 16,
          )
        ],
      ),
    );
  }

  Widget row4Circle() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: sWidth * 15,
          height: sWidth * 6,
          child: Image.asset('assets/images/dot_white.png'),
        ),
        SizedBox(
          width: sWidth * 15,
          height: sWidth * 6,
          child: Image.asset('assets/images/dot_grey.png'),
        ),
        SizedBox(
          width: sWidth * 15,
          height: sWidth * 6,
          child: Image.asset('assets/images/dot_grey.png'),
        ),
        SizedBox(
          width: sWidth * 15,
          height: sWidth * 6,
          child: Image.asset('assets/images/dot_grey.png'),
        )
      ],
    );
  }
}
