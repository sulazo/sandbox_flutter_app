import 'package:flutter/material.dart';

import 'constant file.dart';



class IconContent extends StatelessWidget {
 final icon;
 final String label;

 IconContent({this.icon, this.label});

 @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80),
        SizedBox(height: 15),
        Text(label,
            style: TextStyle(fontSize: kTextSize,color:Color(0xff8d8e98)),
        //:Icon(Icons.venus)
        )],
    );
  }
}