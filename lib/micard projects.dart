import 'dart:ui';

import 'package:flutter/material.dart';

class ProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Projects"),
      ),
      body: Container(
        child: Image.network(
          "https://images.unsplash.com/"
          "photo-1557853197-aefb550b6fdc?ixlib=rb-1.2.1&ixid="
          "eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
          height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
          //filterQuality: FilterQuality.low,
        ),
      ),
    );
  }
}
