import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
       /* appBar: AppBar(
          title: const Text("Lets See", style: TextStyle(color: Colors.lightGreenAccent, fontFamily: "sans-serif")),
          centerTitle: true,
          leading: Icon(Icons.menu, color: Colors.lightGreenAccent, size: 24),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout, color: Colors.lightGreenAccent, size: 20),
            )

          ],
          backgroundColor: Colors.black,
        )
        ,*/
        body: ListView(
          scrollDirection: Axis.horizontal,

          children:  [

            Container(
              width: 250,
              color: Colors.green[500],
              /*borderRadius: BorderRadius.circular(40),*/
            ),


            /*child: Text("Hello, There !!!", style: TextStyle(fontSize: 28)),*/




             Container(
               width: 250,

                  color: Colors.green[300],



              /*child: Text("Hello, There !!!", style: TextStyle(fontSize: 28)),*/

            ),


              Container(

                width: 400,
                  color: Colors.green[200],
              /*child: Text("Hello, There !!!", style: TextStyle(fontSize: 28)),*/
            ),
        ]
        ),
      ),
    );
  }
}
