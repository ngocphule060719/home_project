import 'package:flutter/material.dart';
import 'package:home_project/constant/constant.dart';
import 'package:home_project/screens/user_registration/avatar.dart';
import 'package:home_project/screens/user_registration/checkbox_button.dart';
import 'package:home_project/widgets/button_icon_custom.dart';
import 'package:home_project/widgets/drop_down_custom.dart';
import 'package:home_project/widgets/text_field_custom.dart';
import 'package:home_project/data/data.dart';

import '../../widgets/reorderable_list_view_custom.dart';
import 'add_picture.dart';

class UserRegister extends StatelessWidget {
  const UserRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class UserRegistrationScreen extends StatelessWidget {
  late String appBarTitle = 'ユーザー登録';

  UserRegistrationScreen();

  @override
  Widget build(BuildContext context) {
    final double sWidth = MediaQuery.of(context).size.width / 375;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            print('back!');
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: textColor,
          ),
        ),
        title: Text(
          appBarTitle,
          style: appBarTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: sWidth,
              height: sWidth * 24,
            ),
            Center(
              child: Avatar(aWidth: sWidth),
            ),
            SizedBox(
              width: sWidth,
              height: sWidth * 16,
            ),
            RowAddPicture(rWidth: sWidth),
            SizedBox(
              width: sWidth,
              height: sWidth * 32,
            ),
            profileText(tWidth: sWidth, text: 'プロフィール'),
            SizedBox(
              width: sWidth,
              height: sWidth * 16,
            ),
            textFieldName(tWidth: sWidth),
            SizedBox(
              width: sWidth,
              height: sWidth * 24,
            ),
            textFieldNickName(tWidth: sWidth),
            SizedBox(
              width: sWidth,
              height: sWidth * 24,
            ),
            dropDownSex(dWidth: sWidth),
            SizedBox(
              width: sWidth,
              height: sWidth * 24,
            ),
            dropDownProfession(dWidth: sWidth),
            SizedBox(
              width: sWidth,
              height: sWidth * 24,
            ),
            dropDownBirthPlace(dWidth: sWidth),
            SizedBox(
              width: sWidth,
              height: sWidth * 24,
            ),
            textFieldIntroduction(tWidth: sWidth),
            SizedBox(
              width: sWidth,
              height: sWidth * 8,
            ),
            textUnderIntroduction(tWidth: sWidth),
            SizedBox(
              width: sWidth,
              height: sWidth * 48,
            ),
            profileText(tWidth: sWidth, text: 'よく出かける沿線'),
            SizedBox(
              width: sWidth,
              height: sWidth * 8,
            ),
            ReorderableListViewCustom(
              data: line,
              rWidth: sWidth,
              imageName: 'assets/images/osaka_metro.png',
            ),
            SizedBox(
              width: sWidth,
              height: sWidth * 16,
            ),
            ButtonIconCustom(
              bWidth: sWidth * 170,
              bHeight: sWidth * 40,
              text: '沿線を追加する',
              icon: Icons.add,
              bFunction: () {},
              bColor: backgroundColor,
              bTextStyle: buttonBGTextStyle,
              borderColor: appColor,
            ),
            SizedBox(
              width: sWidth,
              height: sWidth * 40,
            ),
            profileText(tWidth: sWidth, text: 'よく出かけるエリア'),
            SizedBox(
              width: sWidth,
              height: sWidth * 8,
            ),
            SizedBox(
              width: sWidth,
              height: sWidth * 24,
            ),
            ButtonIconCustom(
              bWidth: sWidth * 170,
              bHeight: sWidth * 40,
              text: 'エリアを追加する',
              icon: Icons.add,
              bFunction: () {},
              bColor: backgroundColor,
              bTextStyle: buttonBGTextStyle,
              borderColor: appColor,
            ),
            SizedBox(
              width: sWidth,
              height: sWidth * 40,
            ),
            profileText(tWidth: sWidth, text: 'お気に入りの店舗'),
            SizedBox(
              width: sWidth,
              height: sWidth * 8,
            ),
            SizedBox(
              width: sWidth,
              height: sWidth * 24,
            ),
            ButtonIconCustom(
              bWidth: sWidth * 170,
              bHeight: sWidth * 40,
              text: '店舗を追加する',
              icon: Icons.add,
              bFunction: () {},
              bColor: backgroundColor,
              bTextStyle: buttonBGTextStyle,
              borderColor: appColor,
            ),
            SizedBox(
              width: sWidth,
              height: sWidth * 40,
            ),
            profileText(tWidth: sWidth, text: '働いている店舗'),
            SizedBox(
              width: sWidth,
              height: sWidth * 8,
            ),
            SizedBox(
              width: sWidth,
              height: sWidth * 24,
            ),
            ButtonIconCustom(
              bWidth: sWidth * 170,
              bHeight: sWidth * 40,
              text: '店舗を追加する',
              icon: Icons.add,
              bFunction: () {},
              bColor: backgroundColor,
              bTextStyle: buttonBGTextStyle,
              borderColor: appColor,
            ),
            SizedBox(
              width: sWidth,
              height: sWidth * 55,
            ),
            termText(tWidth: sWidth),
            SizedBox(
              width: sWidth,
              height: sWidth * 13,
            ),
            CheckBoxAndButton(cWidth: sWidth),
          ],
        ),
      ),
    );
  }

  Widget profileText({required double tWidth, required String text}) {
    return Container(
      width: tWidth * 375,
      height: tWidth * 18,
      padding: EdgeInsets.only(left: tWidth * 16),
      child: Text(
        text,
        style: profileTextStyle,
      ),
    );
  }

  Widget textFieldName({required double tWidth}) {
    String? lText = 'お名前'; //name
    String? hText = 'あなたの名前'; //your name
    return TextFieldCustom(
      tWidth: tWidth * 327,
      tHeight: tWidth * 65,
      isPassword: false,
      lText: lText,
      lTextStyle: labelTextStyle,
      hText: hText,
      hTextStyle: hintTextStyle,
      tTextStyle: textFieldStyle,
      border: const OutlineInputBorder(),
      maxLine: 1,
    );
  }

  Widget textFieldNickName({required double tWidth}) {
    String? lText = 'ニックネーム'; //nickname
    String? hText = 'ニックネームを入力してください';
    return TextFieldCustom(
      tWidth: tWidth * 327,
      tHeight: tWidth * 65,
      isPassword: false,
      lText: lText,
      lTextStyle: labelTextStyle,
      hText: hText,
      hTextStyle: hintTextStyle,
      tTextStyle: textFieldStyle,
      border: const OutlineInputBorder(),
      maxLine: 1,
    );
  }

  Widget textFieldIntroduction({required double tWidth}) {
    String? lText = '出身地';
    String? hText = '選択してください';
    return TextFieldCustom(
      tWidth: tWidth * 327,
      tHeight: tWidth * 159,
      isPassword: false,
      lText: lText,
      lTextStyle: labelTextStyle,
      hText: hText,
      hTextStyle: hintTextStyle,
      tTextStyle: textFieldStyle,
      border: const OutlineInputBorder(),
      maxLine: 8,
    );
  }

  Widget dropDownSex({required double dWidth}) {
    return DropDownCustom(
      dWidth: dWidth * 327,
      dHeight: dWidth * 65,
      data: sex,
      lText: '性別',
      lTextStyle: labelTextStyle,
      hText: '選択してください',
      hTextStyle: hintTextStyle,
      tTextStyle: textFieldStyle,
    );
  }

  Widget dropDownProfession({required double dWidth}) {
    return DropDownCustom(
      dWidth: dWidth * 327,
      dHeight: dWidth * 65,
      data: profession,
      lText: '職業',
      lTextStyle: labelTextStyle,
      hText: '選択してください',
      hTextStyle: hintTextStyle,
      tTextStyle: textFieldStyle,
    );
  }

  Widget dropDownBirthPlace({required double dWidth}) {
    return DropDownCustom(
      dWidth: dWidth * 327,
      dHeight: dWidth * 65,
      data: birthPlace,
      lText: '出身地',
      lTextStyle: labelTextStyle,
      hText: '選択してください',
      hTextStyle: hintTextStyle,
      tTextStyle: textFieldStyle,
    );
  }

  Widget termText ({required double tWidth}){
    String text = '以下利用規約を確認の上入力内容を登録してください。';
    return Center(
      child: Text(
        text,
        style: termTextStyle,
      ),
    );
  }

  Widget textUnderIntroduction({required double tWidth}) {
    String line1 = '以下に該当するような自己紹介文は避けましょう';
    String line21 = '・個人情報を判断できるもの';
    String line22 = '・利用規約違反';
    String line31 = '・不快／卑猥な表現';
    String line32 = '・公序良俗違反／法律違反';
    String line4 = '・勧誘と判断できる内容';
    return Container(
      width: tWidth * 327,
      height: tWidth * 60,
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            line1,
            style: noteTextStyle,
          ),
          SizedBox(
            height: tWidth * 14.8,
            width: tWidth * 327,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 0,
                  child: Text(
                    line21,
                    style: noteTextStyle,
                  ),
                ),
                Positioned(
                    left: tWidth * 160,
                    child: Text(
                      line22,
                      style: noteTextStyle,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: tWidth * 14.8,
            width: tWidth * 327,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 0,
                  child: Text(
                    line31,
                    style: noteTextStyle,
                  ),
                ),
                Positioned(
                  left: tWidth * 160,
                  child: Text(
                    line32,
                    style: noteTextStyle,
                  ),
                )
              ],
            ),
          ),
          Text(
            line4,
            style: noteTextStyle,
          ),
        ],
      ),
    );
  }
}
