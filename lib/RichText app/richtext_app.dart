import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: RichTextApp(),
    ));

class RichTextApp extends StatelessWidget {
  final TapGestureRecognizer tapGestureRecognizer = TapGestureRecognizer()
    ..onTap = () {
      print("Ontap tapped");
    };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        title: Text("Rich Text"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            RichText(
              text: TextSpan(
                  text: "Don't have an account ?",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                        recognizer: gestureRecognizer,
                        text: "Click to Register",
                        style: TextStyle(color: Colors.red)),
                    //TextSpan(""),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                  style: TextStyle(fontSize: 44, color: Colors.yellowAccent),
                  text: "Share this",
                  children: <InlineSpan>[
                    WidgetSpan(
                      child: Icon(Icons.share),
                      alignment: PlaceholderAlignment.middle,
                    ),
                    WidgetSpan(
                      child: Icon(Icons.accessibility),
                      alignment: PlaceholderAlignment.top,
                    ),

                    //WidgetSpan(child: null)
                  ]),
            ),
            /* Row(
              children: <Widget>[
                Text("Dont have an account?"),
                Text(" click to Register"),
              ],
            ),*/
          ],
        ),
      ),
    );
  }
}
