import 'package:flutter/material.dart';

class InontKnow extends StatefulWidget {
  const InontKnow({Key? key}) : super(key: key);

  @override
  State<InontKnow> createState() => _InontKnowState();
}


class _InontKnowState extends State<InontKnow> {
  var listMe = [
    'i am om',
    'this is something special',
    'i like this thing',
    'this is special'

  ];
  TextEditingController newvalueController = TextEditingController();
  @override
  void dispose() {
    newvalueController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              child: ListView.builder(
                  itemCount: listMe.length,
                  itemBuilder: (context, int index){
                return Text(listMe[index]);
              }),
            ),
            Container(
              height: 100,
              width: 100,
              child: TextField(
                controller: newvalueController,
                decoration: InputDecoration(
                  label: Text('enter the value'),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                listMe.add(newvalueController.text);
              });
              newvalueController.clear();

            }, child: Text('our life')),

            ElevatedButton(onPressed: (){
              setState(() {
                listMe.removeLast();
              });

            }, child: Text('remove'))
          ],
        ),
      ),
    );
  }
}
