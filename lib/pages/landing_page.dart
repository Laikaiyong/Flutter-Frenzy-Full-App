import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(child: SafeArea(child: Text("Landing page"))),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: DotNavigationBar(
            margin: EdgeInsets.symmetric(horizontal: 10),
            items: [
              // Quiz Navbar
              DotNavigationBarItem(
                  icon: Icon(Icons.quiz), selectedColor: Colors.red),
              DotNavigationBarItem(
                  icon: Icon(Icons.people), selectedColor: Colors.amber),
              DotNavigationBarItem(
                  icon: Icon(Icons.color_lens),
                  selectedColor: Colors.blue.shade400),
              DotNavigationBarItem(
                  icon: Icon(Icons.person),
                  selectedColor: Colors.green.shade300),
            ],
          )),
    );
  }
}
