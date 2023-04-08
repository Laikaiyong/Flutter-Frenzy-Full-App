import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newapp/constants/colors.dart';
import 'package:newapp/constants/styles.dart';

class CustomLogoSection extends StatelessWidget {
  IconData icon;
  String title;
  CustomLogoSection(this.icon, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        icon,
        size: 90,
        color: CustomColors.primaryColor,
      ),
      Text(
        title,
        style: Styles.appTitleTextStyle(),
      )
    ]);
  }
}
