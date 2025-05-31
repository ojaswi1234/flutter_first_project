import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _counter =0;


  String message = "";

  void greetUser(){
    setState(() {
      message = "Hello,  ${myController.text}";
    });
  }

  TextEditingController myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /*body: Center(

       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
         Text(
           _counter.toString(),
           style: Theme.of(context).textTheme.headlineMedium,
         ),
         ElevatedButton(
           onPressed: _incrementCounter,
           child: const Text('Increment'),
         )
        ]
       )
     )*/

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Enter your name'),
            const SizedBox(height: 20),
        Text(message),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),

            ),
            filled: true,
            fillColor: Colors.white,
            labelText: 'Name',
            hintText: 'Enter your name',

            prefixIcon: Icon(Icons.person),
          ),
          controller: myController,

        ),
        ElevatedButton(
          onPressed: greetUser,

          child: const Text('Submit'),

        ),
    ]
        ),
      )
      )
    );
  }
}
