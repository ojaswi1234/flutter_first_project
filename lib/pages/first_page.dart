import 'package:flutter/material.dart';
import 'package:lets_see/pages/first_page.dart';
import 'package:lets_see/pages/home_page.dart';
import 'package:lets_see/pages/profile_page.dart';
import 'package:lets_see/pages/settings_page.dart';

class FirstPage extends StatefulWidget{
   FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final List _pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  int _currentPage = 0;

  void _selectPage(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /* drawer: Drawer(

        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                ),
              ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                  Icon(Icons.sunny, size: 44, color: Colors.white),
                  Text("Hello", style: TextStyle(color: Colors.white , fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  ],
                ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("L O G O U T"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), */
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: _selectPage,
        backgroundColor: Colors.blue,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.grey,

      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
      ],
      ),

      );
  }
}
