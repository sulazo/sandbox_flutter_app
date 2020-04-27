import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../../micard projects.dart';
//import 'package:carousel_slider/carousel_slider.dart';
//import 'package:flutter_mobile_carousel/carousel_arrow.dart';
//import 'package:carousel_pro/carousel_pro.dart';

//import '../../micard projects.dart';

//import '../../micard projects.dart';

void main() => runApp(MaterialApp(
      home: Animate(),
    ));

class Animate extends StatefulWidget {
  @override
  _AnimateState createState() => _AnimateState();
}

class _AnimateState extends State<Animate> {
  @override
  Widget build(BuildContext xyz) {
    return Scaffold(
        backgroundColor: Colors.teal,
        // Color(0xffeb1555), // Color(0xffeb1555);Color(0xff1d1e33);
        /* appBar: AppBar(
          backgroundColor: Color(0xff0a0e21),
          title: Text("Sman Productions"),
          centerTitle: true,
        ),*/
        body: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 30),
                CircleAvatar(
                  backgroundImage: AssetImage('images/passport.jpg'),
                  //backgroundImage: AssetImage('images/passport.jpg'),
                  //minRadius: 200,
                  maxRadius: 70,
                ),
                //  SizedBox(height: 10),
                Text(
                  "Shola Shokunbi",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                /*  Text(
                  "Sman Production",
                ),*/
                Text(
                  "MOBILE APPLICATION DEVELOPER",
                  style: TextStyle(
                    color: Colors.teal.shade100, fontFamily: 'SourceScansPro',
                    // letterSpacing: 1.5,
                    fontSize: 15,
                    //fontWeight: FontWeight.w900
                  ),
                ),
                SizedBox(
                  width: 150,
                  //height: 20,
                  child: Divider(
                    //thickness: 0.5,
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10.0),
                  color: Colors.white,
                  child: ListTile(
                    // dense: true,
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text("+1978 494 9924"),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  color: Colors.white,
                  child: ListTile(
                    // contentPadding: EdgeInsets.all(5),
                    // dense: true,
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "sulazo@yahoo.com",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProjectScreen())),
                      title: Text(
                        "Click to view projects",
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                // Card(),
                SizedBox(
                  width: 250.0,
                  child: TypewriterAnimatedTextKit(
                      onTap: () => print("Tap Event"),
                      text: [
                        "I design & develop experiences that makes people's life easier",
                      ],
                      textStyle: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal.shade100,
                          fontFamily: "Pacifico"),
                      textAlign: TextAlign.start,
                      alignment:
                          AlignmentDirectional.topStart // or Alignment.topLeft
                      ),
                ),

                /* SizedBox(
                    height: 150.0,
                    width: 300.0,
                    child: Carousel(
                      images: [
                        //Image.asset("images/passport.jpg"),
                        NetworkImage(
                            'https://images.unsplash.com/photo-1517694712202-14'
                            'dd9538aa97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60'),
                         NetworkImage(
                            'https://images.unsplash.com/photo-1480506132288-68f7705954bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60'),
                        NetworkImage(
                            'https://images.unsplash.com/photo-1555066931-4365d14bab8c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60'),
                        NetworkImage(
                            'https://images.unsplash.com/photo-1517694712202-14'
                            'dd9538aa97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60'),
                      ],
                    )),*/
              ],
            ),
          ],
        ));
  }
}
