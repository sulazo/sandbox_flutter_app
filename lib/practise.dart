

//import 'package:experiemt_flutter_app/home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: HomeEx1(),
    theme:ThemeData(
    //  scaffoldBackgroundColor: ,
     // primaryTextTheme: ,
      textTheme:TextTheme() ,
      appBarTheme:AppBarTheme(
        color:Colors.teal,
       // iconTheme:IconTheme(data: null, child: null) ,
      //  actionsIconTheme: ,
      ) ,
    ) ,

  )

  );

}

class HomeEx1 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: <Widget>[
          Icon(Icons.account_box),
          Icon(Icons.accessible_forward)
        ],
        title: Text("Sample app October 30"),
      ),
    );
  }
}