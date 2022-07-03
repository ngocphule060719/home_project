import 'package:flutter/material.dart';
import 'package:home_project/constant/constant.dart';

class RowAddPicture extends StatelessWidget {

  late double rWidth;

  RowAddPicture({required this.rWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: rWidth * 325,
      height: rWidth * 72,
      color: backgroundColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          AddButton(bWidth: rWidth * 72),
          SizedBox(
            width: rWidth * 12,
            height: rWidth * 72,
          ),
          AddButton(bWidth: rWidth * 72),
          SizedBox(
            width: rWidth * 12,
            height: rWidth * 72,
          ),
          AddButton(bWidth: rWidth * 72),
          SizedBox(
            width: rWidth * 12,
            height: rWidth * 72,
          ),
          AddButton(bWidth: rWidth * 72),
        ],
      ),
    );
  }
}

class AddButton extends StatelessWidget {

  late double bWidth;
  String buttonText = '追加';
  Color textColor = const Color.fromRGBO(142, 142, 147, 1);

  AddButton({required this.bWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: bWidth,
      height: bWidth,
      decoration: BoxDecoration(
        color: backgroundGrey,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GestureDetector(
        onTap: (){
          //add picture
        },
        child: Stack(
          alignment: Alignment.center,
          children: <Widget> [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: bWidth * 17 / 72,
                height: bWidth * 17 / 72,
                child: Image.asset('assets/images/add_icon.png'),
              ),
            ),
            Positioned(
              bottom: bWidth * 9 / 72,
              child: Center(
                child: Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: fontNoto,
                    color: textColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

