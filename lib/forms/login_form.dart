import 'package:app/components/form/custom_form_submit_button.dart';
import 'package:app/components/form/custom_text_form_field.dart';
import 'package:app/pages/auth/forgot_password_page.dart';
import 'package:app/pages/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextFormField(
                  controller: usernameController,
                  hintText: "Enter your username",
                  labelText: "Username",
                  obscureText: false,
                  icon: Icons.person),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                  controller: passwordController,
                  hintText: "Enter your password",
                  labelText: "Password",
                  obscureText: true,
                  icon: Icons.lock),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/forgot-password");
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              CustomFormSubmitButton(
                buttonText: "Login",
                buttonAction: () {
                  if (_formKey.currentState!.validate()) {
                    if (usernameController.text == "user" &&
                        passwordController.text == "12345") {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Success")));
                      Navigator.pushNamed(context, "/home");
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Wrong credential, try again")));
                    }
                  }
                },
              )
            ],
          )),
    );
  }
}
