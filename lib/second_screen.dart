
import 'package:flutter/material.dart';



class NextScreen extends StatefulWidget {

  final String enteredText;
  NextScreen({this.enteredText});

  @override
  _NextScreenState createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  TextEditingController  _secondController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor:Colors.redAccent ,
            title: Text("Second Screen")),
        body: ListView(children: <Widget>[
       ListTile(
            title: Text('${widget.enteredText}')
         ),
          ListTile(
            title: TextField(
               controller: _secondController,
              decoration: InputDecoration(labelText: "Enter name"),
            ),
          ),
          ListTile(
            title: RaisedButton(child: Text("Send back"),
                onPressed: () {
              Navigator.pop(context,{"key":_secondController.text});
                //  _goToNextScreen();
                }),
          )
        ]));
  }
}
