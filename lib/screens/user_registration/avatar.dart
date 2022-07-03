import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_project/constant/constant.dart';
import 'package:home_project/widgets/button_custom.dart';

class Avatar extends StatelessWidget {
  late double aWidth;

  Avatar({required this.aWidth});

  @override
  Widget build(BuildContext context) {
    const double popupRadius = 16;
    return SizedBox(
      width: aWidth * 160,
      height: aWidth * 160,
      child: Stack(
        children: <Widget>[
          // avatar picture
          Container(
            alignment: Alignment.center,
            width: aWidth * 160,
            height: aWidth * 160,
            decoration: BoxDecoration(
              color: backgroundGrey,
              shape: BoxShape.circle,
            ),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: aWidth * 48,
                height: aWidth * 48,
                child: Image.asset('assets/images/person.png'),
              ),
            ),
          ),
          // camera button
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              // camera icon
              child: Container(
                width: aWidth * 48,
                height: aWidth * 48,
                decoration: BoxDecoration(
                  color: backgroundCamera,
                  shape: BoxShape.circle,
                ),
                child: Image.asset('assets/images/camera.png'),
              ),
              // show popup
              onTap: () {
                showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        width: aWidth * 375,
                        height: aWidth * 261,
                        decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(popupRadius),
                            topLeft: Radius.circular(popupRadius),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: aWidth,
                              height: aWidth * 24,
                            ),
                            textInPopUp(),
                            SizedBox(
                              width: aWidth,
                              height: aWidth * 24,
                            ),
                            ButtonCustom(
                              bHeight: aWidth * 46,
                              bWidth: aWidth * 343,
                              onTap: () {

                              },
                              bTitle: 'ライブラリから選ぶ',
                              bColor: appColor,
                              bTextStyle: buttonTextStyle,
                            ),
                            SizedBox(
                              width: aWidth,
                              height: aWidth * 16,
                            ),
                            ButtonCustom(
                              bHeight: aWidth * 46,
                              bWidth: aWidth * 343,
                              onTap: () {

                              },
                              bTitle: '写真を撮る',
                              bColor: appColor,
                              bTextStyle: buttonTextStyle,
                            ),
                          ],
                        ),
                      );
                    });
              },
            ),
          )
        ],
      ),
    );
  }

  Widget textInPopUp() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          '【注意】以下の写真は登録できません',
          style: popUpTitleStyle,
        ),
        Text(
          '・肖像権、著作権を侵害する画像',
          style: popUpTextStyle,
        ),
        Text(
          '・その他利用規約に違反する画像',
          style: popUpTextStyle,
        ),
      ],
    );
  }
}
