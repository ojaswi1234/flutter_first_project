import 'package:flutter/material.dart';
import 'package:lets_see/second_page.dart';

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
      body: Center(
        child: ElevatedButton(
          child: Text("Go to the Second Page"),
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => SecondPage(),
              ),
            );
          },

        )
      )
    );
  }
}
