import 'package:experiemt_flutter_app/second_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _firstController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text("1st Screen"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: TextField(
              controller: _firstController,
              decoration: InputDecoration(labelText: "Enter name"),
            ),
          ),
          ListTile(
            title: RaisedButton(
                child: Text("Send to Second Screen"),
                onPressed: () {
                  _goToNextScreen();

                  //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NextScreen(enteredText: _nameController.text) ));
                }),
          )
        ],
      ),
    );
  }

  _goToNextScreen() async {
    Map result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                NextScreen(enteredText: _firstController.text)));
    if (result != null && result.containsKey("key")) {
      _firstController.text = result["key"];
    }
    //return Text("");
  }
}
