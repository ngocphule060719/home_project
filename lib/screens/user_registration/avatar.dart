import 'package:flutter/material.dart';
import 'package:home_project/constant/constant.dart';

class Avatar extends StatelessWidget {

  late double aWidth;

  Avatar({required this.aWidth});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox(
        width: aWidth,
        height: aWidth,
        child: Stack(
          children: <Widget> [
            Container(
              alignment: Alignment.center,
                width: aWidth,
                height: aWidth,
                decoration: BoxDecoration(
                  color: backgroundGrey,
                  shape: BoxShape.circle,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: aWidth * 48 / 160,
                    height: aWidth * 48 / 160,
                    
                  ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
