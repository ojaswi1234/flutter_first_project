import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget{
  const SecondPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("2nd Page", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
        body: GridView.builder(
          itemCount: 64,
          gridDelegate:
              //how many values in each row
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context, index) => Container(
            color: Colors.blue,
            margin: EdgeInsets.all(1),
            child: Center(
              child: Text(
                'Item $index',
                style: TextStyle(color: Colors.white),
              ),
          ),
        ),
    )
    );
  }
}
