import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomBottomWording extends StatelessWidget {
  final String descriptionText;
  final String navigationText;
  final Function()? navigateAction;
  const CustomBottomWording(
      {super.key,
      required this.descriptionText,
      required this.navigationText,
      this.navigateAction});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          descriptionText,
          style: TextStyle(color: Colors.grey),
        ),
        GestureDetector(
          child: Text(
            navigationText,
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          onTap: navigateAction,
        )
      ],
    );
  }
}
