import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newapp/components/custom_logo_section.dart';
import 'package:newapp/components/form/custom_text_form_field.dart';
import 'package:newapp/constants/colors.dart';
import 'package:newapp/constants/styles.dart';
import 'package:newapp/forms/login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: CustomColors.backgroundColor,
        body: Center(
            child: Column(
          children: [
            SizedBox(
              height: 100,
            ),

            // Logo Section
            CustomLogoSection(Icons.flutter_dash, "Flutter Frenzy"),

            // Form
            LoginForm(width, usernameController, passwordController),

            // Oauth tiles
          ],
        )));
  }
}
