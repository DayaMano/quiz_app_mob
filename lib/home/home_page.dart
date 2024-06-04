import "package:flutter/material.dart";
import 'package:quiz_app_mob/quiz_page/quiz_page.dart';
import 'package:quiz_app_mob/profile_page/profile_page.dart';
import "package:quiz_app_mob/shared/constant.dart" as constant;

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

  void _onBottomNavigationItemTaped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(
          widget.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: const [QuizPage(), ProfilePage()][_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: constant.homePage,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: constant.profile,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onBottomNavigationItemTaped,
      ),
    );
  }
}
