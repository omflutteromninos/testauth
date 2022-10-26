import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:testauth/widgets/my_textbutton.dart';


class MyNewPhone extends StatefulWidget {
  const MyNewPhone({Key? key}) : super(key: key);

  @override
  State<MyNewPhone> createState() => _MyNewPhoneState();
}

class _MyNewPhoneState extends State<MyNewPhone> {
  TextEditingController _userName = TextEditingController();
  TextEditingController _PhoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _userName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label:Text('username')
              ),
            ),
          ),

          TextField(
            controller: _PhoneNumber,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label:Text('phone number')
            ),
          ),
          MyTextButton(function: (){
            create(_userName.text, _PhoneNumber.text);
          }, buttondata: 'click me',height: 40,width: 60,),
        ],
      ),
    );
  }
}


Future create(String username, String phonenumber) async{
  final userCollection = FirebaseFirestore.instance.collection('users2');
  final userdoc = userCollection.doc();
  var newData = userData(username, phonenumber);
  await userdoc.set(newData.tojson());

  
}

class userData{
  String name;
  String phoneNumber;
  userData(this.name, this.phoneNumber);

  Map<String, dynamic> tojson(){
    return {
      'username': name,
      'phoneNumber': phoneNumber
    };
  }

}



