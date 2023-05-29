import 'package:app/pages/auth/forgot_password_page.dart';
import 'package:app/pages/auth/login_page.dart';
import 'package:app/pages/auth/register_page.dart';
import 'package:app/pages/home_page.dart';
import 'package:app/pages/landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/login",
      routes: <String, WidgetBuilder>{
        "/login": (BuildContext context) => LoginPage(),
        "/register": (BuildContext context) => RegisterPage(),
        "/forgot-password": (BuildContext context) => ForgotPasswordPage(),
        "/home": (BuildContext context) => HomePage(),
      },
    );
  }
}
