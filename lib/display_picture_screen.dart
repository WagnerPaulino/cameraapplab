import 'dart:io';
import 'package:flutter/material.dart';

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Display the Picture')),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.file(File(imagePath)),
              FlatButton(
                child: Text("Save Picture"),
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
