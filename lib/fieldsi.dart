import 'package:flutter/material.dart';

class TestForm extends StatefulWidget {
  const TestForm({Key? key}) : super(key: key);

  @override
  State<TestForm> createState() => _TestFormState();
}

class _TestFormState extends State<TestForm> {
  TextEditingController emialcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.multiline,
            maxLines: 3,
            controller: emialcontroller,
            decoration: InputDecoration(

              label: Text('lebel'),
              prefixIcon: Icon(Icons.remove_red_eye),
            ),
          ),
        ],
      ),
    );
  }
}
