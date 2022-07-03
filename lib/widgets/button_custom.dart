import 'package:flutter/material.dart';
import 'package:home_project/constant/constant.dart';

class ButtonCustom extends StatelessWidget {
  late double bHeight;
  late double bWidth;
  late Function onTap;
  late String bTitle;
  Color? bColor;
  TextStyle? bTextStyle;

  ButtonCustom({
    required this.bHeight,
    required this.bWidth,
    required this.onTap,
    required this.bTitle,
    this.bColor,
    this.bTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 100;
    return Container(
      alignment: Alignment.center,
      width: bWidth,
      height: bHeight,
      decoration: BoxDecoration(
        color: bColor ?? backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: GestureDetector(
        onTap: onTap(),
        child: Center(
          child: Text(
            bTitle,
            style: bTextStyle,
          ),
        ),
      ),
    );
  }
}
