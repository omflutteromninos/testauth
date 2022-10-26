import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:testauth/auth.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _emailcontroller,
            decoration: InputDecoration(
              label: Text('enter email'),
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            controller: _passwordcontroller,
            decoration: InputDecoration(
              label: Text('enter Password'),
              border: OutlineInputBorder(),
            ),
          ),
          TextButton(onPressed: (

              ){
            //firebaseAuth.createUserWithEmailAndPassword(email: _emailcontroller.text, password: _passwordcontroller.text);
            Auth().logInUser(_emailcontroller.text, _passwordcontroller.text);

          }, child: Text('our button')),
        ],
      ),
    );
  }
}
