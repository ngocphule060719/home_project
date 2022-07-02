import 'package:flutter/material.dart';
import 'package:home_project/constant/constant.dart';
import 'package:home_project/screens/user_registration/avatar.dart';

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
              child: Avatar(aWidth: sWidth * 160),
            ),
            SizedBox(
              width: sWidth,
              height: sWidth * 16,
            )
          ],
        ),
      ),
    );
  }
}
