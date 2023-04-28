import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomFormSubmitButton extends StatelessWidget {
  final String buttonText;
  final Function()? buttonAction;
  const CustomFormSubmitButton(
      {super.key, this.buttonAction, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
            textStyle: MaterialStatePropertyAll<TextStyle>(
                TextStyle(fontSize: 17, fontWeight: FontWeight.w600))),
        child: Text(buttonText),
        onPressed: buttonAction,
      ),
    );
  }
}
