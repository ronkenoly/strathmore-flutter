
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void main() => runApp(const login());
  
// ignore: camel_case_types
class login extends StatefulWidget {
  const login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _login createState() => _login();
}
  
// ignore: camel_case_types
class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "login ",
      home:loginPage(),
    );
  }
}
  
// ignore: camel_case_types
class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _loginState createState() => _loginState();
}
  
// ignore: camel_case_types
class _login extends State<loginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
   String email = "";
   String password = "";
   String name = "";
  
  void _submit() {
  name = "";
  email = "";
  password = "";
  }
  
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
   
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
            tooltip: 'main',
            onPressed: () { Navigator.pop(context);
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
                    decoration:const InputDecoration(labelText: 'email'),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty || value.contains('@')) {
                        return 'Invalid email!';
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) {
                      setState(() {
                        email = value;
                      });
                    },                   
                  ),
                  // this is where the
                  // input goes
                  TextFormField(
                    decoration:const InputDecoration(labelText: 'name'),
                    keyboardType: TextInputType.text,
                    onFieldSubmitted: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                    TextFormField(
                    decoration:const InputDecoration(labelText: 'password'),
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty && value.length < 7) {
                        return 'Invalid password!';
                      }
                      return null;
                      },
                    onFieldSubmitted: (value) {
                      setState(() {
                        password = value;
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
                name.isEmpty ?const Text("No data") : Text(name),
                const SizedBox(
                  height: 10,
                ),
                email.isEmpty ?const Text("No Data") : Text(email),       
                password.isEmpty ?const Text("No Data") : Text(password),
              ],
            )
          ],
        ),
      ),
    );
  }
  
  RaisedButton({required void Function() onPressed, required Text child}) {}
}