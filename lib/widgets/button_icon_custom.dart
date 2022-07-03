import 'package:flutter/material.dart';
import 'package:home_project/constant/constant.dart';

class ButtonIconCustom extends StatelessWidget {

  late double bWidth;
  late double bHeight;
  late String text;
  late IconData icon;
  late Function bFunction;
  Color? bColor;
  Color? borderColor;
  TextStyle? bTextStyle;

  ButtonIconCustom({
    required this.bWidth,
    required this.bHeight,
    required this.text,
    required this.icon,
    required this.bFunction,
    this.bColor,
    this.bTextStyle,
    this.borderColor,
});

  @override
  Widget build(BuildContext context) {
    double bRadius = 100;
    return Container(
      alignment: Alignment.center,
      width: bWidth,
      height: bHeight,
      decoration: BoxDecoration(
        color: bColor ?? appColor,
        borderRadius: BorderRadius.circular(bRadius),
        border: Border.all(color: borderColor ?? bColor ?? appColor),
      ),
      child: GestureDetector(
        onTap: bFunction(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Icon(
              icon,
              color: appColor,
              size: 21,
            ),
            Text(
                text,
                style: bTextStyle,
              ),
          ],
        ),
      ),
    );
  }
}
