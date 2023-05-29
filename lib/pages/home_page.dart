import 'package:app/pages/google_logo_theme_page.dart';
import 'package:app/pages/profile_page.dart';
import 'package:app/pages/quiz_page.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    QuizPage(),
    Text("Index 1: Participant"),
    GoogleLogoThemePage(),
    ProfilePage()
  ];

  void _handlePageChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
          child: SafeArea(child: _widgetOptions.elementAt(_selectedIndex))),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: DotNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _handlePageChange,
            dotIndicatorColor: Colors.white,
            unselectedItemColor: Colors.grey[300],
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
            boxShadow: [
              BoxShadow(
                  color: Colors.black54, spreadRadius: 0.4, blurRadius: 3.0)
            ],
          )),
    );
  }
}
