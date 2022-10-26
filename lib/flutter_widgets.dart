import 'package:flutter/material.dart';

class FlutterWidgets extends StatelessWidget {
  const FlutterWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: TextButton(
              onPressed: (){
                //show material messenger
                ScaffoldMessenger.of(context).showMaterialBanner(
                  MaterialBanner(content: Text('hello this is our app what you want from us'), actions: [
                    TextButton(onPressed: (){
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                    }, child: Text('hiii'))
                  ],)
                );
              }, child: Text('this is our messenger'),
            ),
          ),

          //show model bottom sheet

          ElevatedButton(onPressed: (){
            showModalBottomSheet(context: context, builder: (context){
              return SizedBox(
                height: 300,
                width: 300,
                child: TextButton(child: Text('we are the bottom'),onPressed: (){
                  Navigator.of(context).pop();
               },),
              );
            });
          }, child: Text('button'))
        ],
      ),
    );
  }
}
