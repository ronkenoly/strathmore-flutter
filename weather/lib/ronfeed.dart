
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void main() => runApp(const ronfeed());
  
// ignore: camel_case_types
class ronfeed extends StatefulWidget {
  const ronfeed({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ronfeed createState() => _ronfeed();
}
  
// ignore: camel_case_types
class _ronfeedState extends State<ronfeed> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "ronfeed ",
      home:ronfeedPage(),
    );
  }
}
  
// ignore: camel_case_types
class ronfeedPage extends StatefulWidget {
  const ronfeedPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ronfeedState createState() => _ronfeedState();
}
  
// ignore: camel_case_types
class _ronfeed extends State<ronfeedPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
   var humidity = "";
   var temperature = "";
   var rainfall= "";
  
  void _submit() {
  humidity = "";
  temperature = "";
  rainfall = "";
  }
  
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var rainfall;
    return Scaffold(
      appBar: AppBar(
        title:const Text("ronfeed form"),
         backgroundColor:Colors.amberAccent ,
          shape:  const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
          actions:<Widget>[     
           IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'about',
            onPressed: () {
              Navigator.pop(context);
            },
          ), 
          ]
        ),
    
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration:const InputDecoration(labelText: 'humidity'),
                    keyboardType: TextInputType.number,
                    onFieldSubmitted: (value) {
                      setState(() {
                        humidity = value;
                      });
                    },                   
                  ),
                  // this is where the
                  // input goes
                  TextFormField(
                    decoration:const InputDecoration(labelText: 'temperature'),
                    keyboardType: TextInputType.number,
                    onFieldSubmitted: (value) {
                      setState(() {
                        temperature = value;
                      });
                    },
                  ),
                    TextFormField(
                    decoration:const InputDecoration(labelText: 'rainfall'),
                    keyboardType: TextInputType.number,
                    onFieldSubmitted: (value) {
                      setState(() {
                        temperature = value;
                      });
                    }
                  ),
                  RaisedButton(
                    onPressed: _submit,
                    child: const Text("submit"),
                  ),
                ],
              ),
            ),
            // this is where
            // the form field
            // are defined
            const SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                humidity.isEmpty ?const Text("No data") : Text(humidity),
                const SizedBox(
                  height: 10,
                ),
                temperature.isEmpty ?const Text("No Data") : Text(temperature),
       
                rainfall.isEmpty ? const Text("No Data") : Text(rainfall),
              ],
            )
          ],
        ),
      ),
    );
  }
  
  RaisedButton({required void Function() onPressed, required Text child}) {}
}