import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  MyTextButton({Key? key, this.height=20, this.width=30,this.color, required this.function, required this.buttondata}) : super(key: key);
  double width;
  double height;
  Color? color;
  VoidCallback function;
  String buttondata;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: width,
        width: height,
        color: color,
        child: Text(buttondata),
      ),

    );
  }
}
