

import 'package:camera/camera.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';


class LetsUploadImage extends StatefulWidget {
  const LetsUploadImage({Key? key}) : super(key: key);

  @override
  State<LetsUploadImage> createState() => _LetsUploadImageState();
}

class _LetsUploadImageState extends State<LetsUploadImage> {
  ImagePicker imagePicker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Container(
        height: 50,
        width: 30,
        child: Lottie.network('https://assets9.lottiefiles.com/packages/lf20_BWcL6WonZx.json'),
      )
    ));
  }
}