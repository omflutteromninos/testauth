import 'package:flutter/material.dart';

class NewCrusTest extends StatefulWidget {
  const NewCrusTest({Key? key}) : super(key: key);

  @override
  State<NewCrusTest> createState() => _NewCrusTestState();
}

class _NewCrusTestState extends State<NewCrusTest> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context){
          controller.text = 'myname';
          return Column(
            children: [
              TextField(
                controller: controller,
              ),
              TextField(),
              TextField(),
              TextField(),
            ],
          );
        });
      },),

    );
  }
}
