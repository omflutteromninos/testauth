import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TestFirestore extends StatefulWidget {
  const TestFirestore({Key? key}) : super(key: key);

  @override
  State<TestFirestore> createState() => _TestFirestoreState();
}

class _TestFirestoreState extends State<TestFirestore> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  int userId = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           TextField(
             controller: _emailController,
             decoration: InputDecoration(
               border: UnderlineInputBorder(),
               label: Text('username'),
             ),
           ),
           TextField(
             controller: _usernameController,
             decoration: const InputDecoration(
               border: UnderlineInputBorder(),
               label: Text('email'),
             ),
           ),

           TextButton(
             child: Text('send data'),
             onPressed: (){
               create(_usernameController.text, _emailController.text, 10);
             },
           ),
           // StreamBuilder(
           //   stream: FirebaseFirestore.instance.collection('users').snapshots(),
           //   builder: (context, snapshots){
           //     if(snapshots.hasData){
           //       return ListView(
           //           children:
           //           snapshots.data!.docs.map((document) {
           //             return Container(
           //               child: Text(document['1']),
           //             );
           //           }).toList()
           //       );
           //     }
           //     else{
           //       return Text('no data found');
           //     }
           //   },
           // ),
         ],
       ),
    );
  }
}

Future create(String username, String email, int userId) async{
  final userCollection = FirebaseFirestore.instance.collection('new users');
  final userdoc= userCollection.doc();
  var newData = data(username, email);

  await userdoc.set(newData.tojson());
}

class data{
  String? userName;
  String? phoneNumber;

  data(this.phoneNumber, this.userName);

  Map<String, dynamic> tojson(){
    return {
      'userName': userName,
      'phoneNumber': phoneNumber,

  };

}

static data fromjson(Map<String, dynamic> json)=>data(json['userName'], json['phoneNumber']);

}

Stream<List<data>> readUser() => FirebaseFirestore.instance.collection('users').snapshots().map((snapshot) => 
snapshot.docs.map((e) =>data.fromjson(e.data())).toList());













