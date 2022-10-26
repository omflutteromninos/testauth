import 'package:flutter/material.dart';


class LetsHaveFun extends StatelessWidget {
  const LetsHaveFun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('hiiiii'),
            Text('hiiiii this is our column and lets see how it'),
            Text('hi'),
            Text('hiiiii'),
            Text('hiiiii'),
            Text('hiiiii'),
          ],
        ),
      ),
    );
  }
}
