import 'package:flutter/material.dart';
import 'package:testauth/auth.dart';
import 'package:testauth/auth1.dart';
import 'package:testauth/formpage.dart';
import 'package:testauth/my_home_page.dart';

class OurNewWidgetTree extends StatefulWidget {
  const OurNewWidgetTree({Key? key}) : super(key: key);

  @override
  State<OurNewWidgetTree> createState() => _OurNewWidgetTreeState();
}

class _OurNewWidgetTreeState extends State<OurNewWidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Authenti().authstate,
      builder: (context, snapshot){
      if(snapshot.hasData){
        return MyHomePage();

      }
      else{
        return OurLoginPage();
      }

    },

    );
  }
}

bool obsecuretext = true;
