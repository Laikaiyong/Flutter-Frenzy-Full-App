import 'package:app/components/custom_bottom_wording.dart';
import 'package:app/components/custom_square_tile.dart';
import 'package:app/components/custom_top_logo_banner.dart';
import 'package:app/components/form/custom_form_submit_button.dart';
import 'package:app/components/form/custom_text_form_field.dart';
import 'package:app/forms/register_form.dart';
import 'package:app/pages/auth/forgot_password_page.dart';
import 'package:app/pages/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CustomTopLogoBanner(
                  icon: Icons.flutter_dash, title: "Flutter Frenzy"),
              SizedBox(
                height: 25,
              ),
              RegisterForm(),
              SizedBox(
                height: 50,
              ),
              CustomBottomWording(
                descriptionText: "Already a member? ",
                navigationText: "Login here",
                navigateAction: () {
                  Navigator.pushNamed(context, "/login");
                },
              ),
            ],
          ),
        ))));
  }
}
