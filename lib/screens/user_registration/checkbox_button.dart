import 'package:flutter/material.dart';
import 'package:home_project/constant/constant.dart';
import 'package:home_project/widgets/button_custom.dart';

class CheckBoxAndButton extends StatefulWidget {
  late double cWidth;
  bool isChecked = false;
  Color? checkBoxColor;
  Color? newColor;

  CheckBoxAndButton({required this.cWidth});

  @override
  State<CheckBoxAndButton> createState() => _CheckBoxAndButtonState();
}

class _CheckBoxAndButtonState extends State<CheckBoxAndButton> {
  @override
  Widget build(BuildContext context) {
    double borderCheckBox = 3;
    String text1 = '利用規約 ';
    String text2 = ' を確認しました';
    return Container(
      width: widget.cWidth * 375,
      height: widget.cWidth * 114,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  widget.isChecked = !widget.isChecked;
                  widget.isChecked == true
                      ? widget.newColor = appColor
                      : widget.newColor = backgroundGrey;
                  setState(() {
                    widget.checkBoxColor = widget.newColor;
                  });
                },
                child: SizedBox(
                  width: widget.cWidth * 24,
                  height: widget.cWidth * 24,
                  child: Center(
                    child: Icon(
                      Icons.check_box_rounded,
                      color: widget.checkBoxColor ?? backgroundGrey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: widget.cWidth * 7,
                height: widget.cWidth,
              ),
              Text(
                text1,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: widget.checkBoxColor ?? backgroundGrey,
                  fontFamily: fontNoto,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
              Image.asset(
                'assets/images/external_link.png',
                color: widget.checkBoxColor ?? backgroundGrey,
              ),
              Text(
                text2,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: widget.checkBoxColor ?? backgroundGrey,
                  fontFamily: fontNoto,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          SizedBox(
            width: widget.cWidth,
            height: widget.cWidth * 15,
          ),
          ButtonCustom(
            bHeight: widget.cWidth * 48,
            bWidth: widget.cWidth * 327,
            onTap: () {
              widget.isChecked == false ? null : (){
                print('register');
              };
            },
            bTitle: '上記に同意のうえ登録する',
            bColor: widget.checkBoxColor ?? backgroundGrey,
            bTextStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: backgroundColor,
              fontFamily: fontNoto,
            ),
          )
        ],
      ),
    );
  }
}
