// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

var imagePicker = ImagePicker();
var image1;
var image2;
var image3;
var image4;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Text('포토네컷'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Expanded(
                  child: InkWell(
                      onDoubleTap: () => setState(() => image1 = null),
                      onTap: () async {
                        var xfile = await imagePicker.pickImage(
                            source: ImageSource.gallery);
                        if (xfile != null) {
                          image1 = xfile;
                          setState(() {});
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          image: image1 != null
                              ? DecorationImage(
                                  image: AssetImage(image1.path),
                                  fit: BoxFit.cover)
                              : null,
                        ),
                      )),
                ),
                Expanded(
                  child: InkWell(
                      onTap: () {
                        imagePicker.pickImage(source: ImageSource.gallery);
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          image: image2 != null
                              ? DecorationImage(
                                  image: AssetImage(image2.path),
                                  fit: BoxFit.cover)
                              : null,
                        ),
                      )),
                ),
                Expanded(
                  child: InkWell(
                      onTap: () {
                        imagePicker.pickImage(source: ImageSource.gallery);
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          image: image3 != null
                              ? DecorationImage(
                                  image: AssetImage(image3.path),
                                  fit: BoxFit.cover)
                              : null,
                        ),
                      )),
                ),
                Expanded(
                  child: InkWell(
                      onTap: () {
                        imagePicker.pickImage(source: ImageSource.gallery);
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          image: image4 != null
                              ? DecorationImage(
                                  image: AssetImage(image4.path),
                                  fit: BoxFit.cover)
                              : null,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
