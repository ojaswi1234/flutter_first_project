import 'package:flutter/material.dart';
import 'package:lets_see/pages/first_page.dart';
import 'package:lets_see/pages/home_page.dart';
import 'package:lets_see/pages/settings_page.dart';


void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  void userTapped(){
    print("The user Tapped");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/main': (context) => FirstPage(),
        '/home': (context) => HomePage(),
        '/settings': (context) => SettingsPage(),
      }
    );
  }
}
