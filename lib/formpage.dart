import 'package:flutter/material.dart';
import 'package:testauth/auth1.dart';
import 'package:testauth/my_home_page.dart';


class OurLoginPage extends StatefulWidget {
  const OurLoginPage({Key? key}) : super(key: key);

  @override
  State<OurLoginPage> createState() => _OurLoginPageState();
}

class _OurLoginPageState extends State<OurLoginPage> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  bool isobsecureText = true;
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

            obscureText: isobsecureText,
            controller: _passwordcontroller,
            decoration: InputDecoration(
              label: Text('enter Password'),
              border: OutlineInputBorder(),
              suffixIcon: GestureDetector(
                child: Icon(Icons.remove_red_eye),
                onTap: (){
                  setState(() {
                    isobsecureText = !isobsecureText;
                  });

                },
              )
            ),
          ),
          TextButton(onPressed: (

              ){


            //a poematic proposal a dreamland
            //the moon girl
            // somewhere near the moon light
            // a magic happened
            //







            Authenti().SignUp(_emailcontroller.text, _passwordcontroller.text);
            //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyHomePage()));
            //firebaseAuth.createUserWithEmailAndPassword(email: _emailcontroller.text, password: _passwordcontroller.text);\

          }, child: Text('our button')),
        ],
      ),
      );
  }
}
