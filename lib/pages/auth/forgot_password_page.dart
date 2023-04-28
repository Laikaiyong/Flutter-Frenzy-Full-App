import 'package:app/components/custom_bottom_wording.dart';
import 'package:app/components/custom_square_tile.dart';
import 'package:app/components/custom_top_logo_banner.dart';
import 'package:app/components/form/custom_form_submit_button.dart';
import 'package:app/components/form/custom_text_form_field.dart';
import 'package:app/forms/forgot_password_form.dart';
import 'package:app/pages/auth/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
                  icon: Icons.lock_reset, title: "Reset Password"),
              SizedBox(
                height: 25,
              ),
              ForgotPasswordForm(),
              SizedBox(
                height: 50,
              ),
              CustomBottomWording(
                descriptionText: "Not a member? ",
                navigationText: "Register now",
                navigateAction: () {
                  Navigator.pushNamed(context, "/register");
                },
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ))));
  }
}
