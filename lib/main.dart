import 'package:flutter/material.dart';
import 'package:newapp/pages/forgot_password_page.dart';
import 'package:newapp/pages/login_page.dart';
import 'package:newapp/pages/signup_page.dart';

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
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => LoginPage(),
          '/signup': (BuildContext context) => SignUpPage(),
          '/forgot_password': (BuildContext context) => ForgotPasswordPage(),
        });
  }
}
