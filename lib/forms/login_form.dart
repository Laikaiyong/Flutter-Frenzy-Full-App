import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newapp/components/form/custom_text_form_field.dart';
import 'package:newapp/constants/colors.dart';

class LoginForm extends StatefulWidget {
  double width;
  TextEditingController usernameController;
  TextEditingController passwordController;
  LoginForm(this.width, this.usernameController, this.passwordController,
      {super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(50),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              CustomTextFormField(
                  widget.usernameController,
                  false,
                  Icon(Icons.person_outline_sharp),
                  CustomColors.primaryColor,
                  "Enter your username",
                  "Username"),
              CustomTextFormField(
                  widget.passwordController,
                  true,
                  Icon(Icons.lock),
                  CustomColors.primaryColor,
                  "Enter your password",
                  "Password"),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/forgot_password');
                        }),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (widget.usernameController.text == "user" &&
                        widget.passwordController.text == "12345") {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Success Login"),
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Invalid Credentials"),
                      ));
                    }
                  }
                },
                child: Text("Login"),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.only(
                            left: widget.width / 100 * 20,
                            right: widget.width / 100 * 20))),
              )
            ],
          ),
        ));
  }
}
