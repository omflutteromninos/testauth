import 'package:flutter/material.dart';
import 'package:testauth/auth1.dart';
import 'auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  Widget _title(){
    return Text('user Authentication');
  }
  final User? _user = Auth().currentUser;
  Widget _userId(){
    return Text(_user?.email ?? 'user email');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _userId(),
          _title(),
          CircularProgressIndicator(

          ),
          TextButton(onPressed: (){
            Authenti().SignOut();
          }, child: Text('₹'))
        ],
      ),
    );
  }
}
