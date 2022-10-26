import 'package:flutter/material.dart';


class MyBar extends StatefulWidget {
  const MyBar({Key? key}) : super(key: key);

  @override
  State<MyBar> createState() => _MyBarState();
}

class _MyBarState extends State<MyBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("YouTube",),
      // ),

      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 10,
        unselectedFontSize: 12,
        unselectedLabelStyle: TextStyle(color: Colors.blue),
        currentIndex: 0,
        // backgroundColor: Colors.blue,
        mouseCursor: SystemMouseCursors.grab,
        items: const
        [
          BottomNavigationBarItem(icon: Icon(Icons.account_balance,), label: "Home",backgroundColor: Colors.green,),
          BottomNavigationBarItem(icon: Icon(Icons.youtube_searched_for_sharp,), label: "Shorts",backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_rounded,size: 45,),label: " add",backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_rounded,size: 45,),label: " add",backgroundColor: Colors.green),
          //  BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Subscriptions"),
          // BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined), label: "Library"),
          //


        ],
      ),




    );
  }
}