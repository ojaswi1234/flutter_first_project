import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget{
  const FirstPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("1st Page", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
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

      bottomNavigationBar: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"
        )
      ],
      ),
      body: Center(
        child: Text("Hello, Flutter Developer")
      ),
      );
  }
}
