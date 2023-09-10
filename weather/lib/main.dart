import 'package:flutter/material.dart';
import 'package:weather/register.dart';
import 'package:weather/ronfeed.dart';
import 'package:weather/login.dart';



void main() => runApp(const about());
 
// ignore: camel_case_types
class about extends StatelessWidget {
  const about ({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("my weather app"),
          backgroundColor:Colors.amberAccent ,
          shape:  const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
          actions:<Widget>[
            IconButton(
            icon: const Icon(Icons.home),
            tooltip: 'ronfeed',
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => const ronfeed()),
              );
            },
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'register',
            onPressed: () { Navigator.push(context,MaterialPageRoute(builder: (context) =>const registerPage()),
              );
            },
          ), 
           IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'login',
            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) =>const loginPage()),
              );},
          ),
           
          ]
        ),
        body: Container(
          height: 200,
          width: double.infinity,
          color: Colors.purple,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          
          child: const Text("about page!",
              style: TextStyle(fontSize: 20)),
        ),  
              
        )
      );
  }
  // ignore: non_constant_identifier_names
  RaisedButton({required void Function() onPressed, required Text child}) {}
}