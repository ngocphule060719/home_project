import 'package:flutter/material.dart';
import 'package:home_project/constant/constant.dart';

class DropDownCustom extends StatefulWidget {
  late double dWidth;
  late double dHeight;
  late List<String> data;
  String? lText;
  TextStyle? lTextStyle;
  String? hText;
  TextStyle? hTextStyle;
  TextStyle? tTextStyle;

  DropDownCustom({
    required this.dWidth,
    required this.dHeight,
    required this.data,
    this.lTextStyle,
    this.hTextStyle,
    this.tTextStyle,
    this.hText,
    this.lText,
  });

  @override
  State<DropDownCustom> createState() => _DropDownCustomState();
}

class _DropDownCustomState extends State<DropDownCustom> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.dWidth,
      height: widget.dHeight,
      child: DropdownButtonFormField(
        icon: const Icon(Icons.keyboard_arrow_down),
        style: widget.tTextStyle,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.lText,
          labelStyle: widget.lTextStyle,
          hintText: widget.hText,
          hintStyle: widget.hTextStyle,
          border: const OutlineInputBorder(),
        ),
        items: widget.data.map((String value){
          return DropdownMenuItem(
            value: value,
            child: Text(
              value,
              style: widget.tTextStyle,
            ),
          );
        }).toList(),
        onChanged: (value) {
          setState((){
            selectedValue = value.toString();
          });
        },
        validator: (value) {
          if (value.toString().isEmpty) {
            return '選択してください';
          } else {
            return null;
          }
        },
      ),
    );
  }
}
