import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testauth/alini.dart';
import 'package:testauth/bottomTes12.dart';
import 'package:testauth/bottomtest.dart';
import 'package:testauth/emplyees_list.dart';
import 'package:testauth/fieldsi.dart';
import 'package:testauth/firestore_postdata.dart';
import 'package:testauth/flutter_widgets.dart';
import 'package:testauth/formpage.dart';
import 'package:testauth/interntest.dart';
import 'package:testauth/letsplaywithcolumbns.dart';
import 'package:testauth/magic_test.dart';
import 'package:testauth/models/widget_treee.dart';
import 'package:testauth/readata.dart';
import 'package:testauth/sign_up_screen.dart';
import 'package:testauth/test_auth.dart';
import 'package:testauth/tester.dart';
import 'package:testauth/topflutterwidgets.dart';
import 'package:testauth/view_data.dart';
import 'package:testauth/visibilitytest.dart';
import 'package:testauth/widget_tree.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LetsUploadImage(),
    );
  }
}
