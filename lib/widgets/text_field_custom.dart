import 'package:flutter/material.dart';
import 'package:home_project/constant/constant.dart';

class TextFieldCustom extends StatefulWidget {
  late double tWidth;
  late double tHeight;
  late bool isPassword;

  //label
  String? lText;
  TextStyle? lTextStyle;

  //hint text
  String? hText;
  TextStyle? hTextStyle;

  //text field
  TextStyle? tTextStyle;
  int? maxLine;

  //border
  InputBorder? border;

  //controller
  TextEditingController? tController;

  TextFieldCustom({
    required this.tWidth,
    required this.tHeight,
    required this.isPassword,
    this.lText,
    this.hText,
    this.tController,
    this.border,
    this.tTextStyle,
    this.hTextStyle,
    this.lTextStyle,
    this.maxLine,
  });

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  bool _isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: widget.tWidth,
      height: widget.tHeight,
      child: TextField(
        style: widget.tTextStyle,
        maxLines: widget.maxLine,
        controller: widget.tController,
        obscureText: widget.isPassword ? _isPassword : !_isPassword,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: GestureDetector(
            onTap: () {
              widget.isPassword
                  ? setState(() {
                      _isPassword = !_isPassword;
                    })
                  : null;
            },
            child: Icon(
              widget.isPassword
                  ? (_isPassword ? Icons.visibility_off : Icons.visibility)
                  : null,
              color: appColor,
            ),
          ),
          //border
          border: widget.border,
          // label
          labelText: widget.lText,
          labelStyle: widget.lTextStyle,
          //hint text
          hintText: widget.hText,
          hintStyle: widget.hTextStyle,
        ),
      ),
    );
  }
}
