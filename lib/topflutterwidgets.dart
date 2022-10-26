import 'package:flutter/material.dart';

class NewWidgets extends StatefulWidget {
  const NewWidgets({Key? key}) : super(key: key);

  @override
  State<NewWidgets> createState() => _NewWidgetsState();
}

class _NewWidgetsState extends State<NewWidgets> {
  bool isselected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          setState(() {
            isselected=!isselected;
          });
        },
        child: Container(
          width: double.infinity,
          height: 300,
          color: Colors.grey,
          child: AnimatedAlign(
            duration: Duration(seconds:2),
            curve: Curves.easeInOut,
            alignment: isselected ? Alignment.topRight : Alignment.bottomLeft,
            child: FlutterLogo(
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
