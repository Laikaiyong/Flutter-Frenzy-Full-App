import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newapp/constants/colors.dart';

class CustomTextFormField extends StatefulWidget {
  TextEditingController controller;
  bool obscureText;
  Widget icon;
  Color iconColor;
  String hintText;
  String labelText;
  CustomTextFormField(
    this.controller,
    this.obscureText,
    this.icon,
    this.iconColor,
    this.hintText,
    this.labelText, {
    super.key,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
          icon: widget.icon,
          iconColor: widget.iconColor,
          hintText: widget.hintText,
          labelText: widget.labelText),
    );
  }
}
