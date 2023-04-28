import 'package:app/components/custom_bottom_wording.dart';
import 'package:app/components/custom_square_tile.dart';
import 'package:app/components/custom_top_logo_banner.dart';
import 'package:app/components/form/custom_form_submit_button.dart';
import 'package:app/components/form/custom_text_form_field.dart';
import 'package:app/forms/login_form.dart';
import 'package:app/pages/auth/forgot_password_page.dart';
import 'package:app/pages/auth/register_page.dart';
import 'package:app/pages/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              LoginForm(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    )),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Or continue with",
                          style: TextStyle(color: Colors.grey),
                        )),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomSquareTile(
                    imagePath: "assets/image/google.png",
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  CustomSquareTile(
                    icon: Icons.apple,
                  )
                ],
              ),
              SizedBox(
                height: 25,
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
