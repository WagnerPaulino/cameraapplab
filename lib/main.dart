import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      this._image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My first app using camera"),
      ),
      body: Center(
          child: _image == null
              ? Text('No image selected')
              : new Image.file(_image)),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Take picture',
        child: Icon(Icons.camera),
      ),
    ));
  }
}
