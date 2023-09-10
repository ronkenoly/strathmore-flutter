//ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

  void main() => runApp(const register());
 
// ignore: camel_case_types
class register extends StatefulWidget {
  const register({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _register createState() => _register();
}
  
// ignore: camel_case_types
class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "register ",
      home:registerPage(),
    );
  }
}
  
// ignore: camel_case_types
class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _registerState createState() => _registerState();
}
  
// ignore: camel_case_types
class _register extends State<registerPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
   String name = "";
   String email = "";
   String password= "";
  
  void _submit() {
  name = "";
  email = "";
  password = "";
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("register form"),
        actions:<Widget>[
            IconButton(
            icon: const Icon(Icons.home),
            tooltip: 'ronfeed',
            onPressed: () {
              Navigator.pop(context);
            },
          ),] //IconButton
        
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
                    decoration:const InputDecoration(labelText: 'name'),
                    keyboardType: TextInputType.name,
                    onFieldSubmitted: (value) {
                      setState(() {
                        name = value;
                      });
                    },                   
                  ),
                  // this is where the
                  // input goes
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
                    TextFormField(
                    decoration:const InputDecoration(labelText: 'password'),
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty && value.length < 7) {
                        return 'Invalid password!';
                      }
                    // ignore: unused_label
                    onFieldSubmitted: (value) {
                      setState(() {
                         password= value;
                      });
                    };
                    return null;
                    },
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
                password.isEmpty ? const Text("No Data") : Text(password),
              ],
            )
          ],
        ),
      ),
    );
  }
  
  RaisedButton({required void Function() onPressed, required Text child}) {}
}