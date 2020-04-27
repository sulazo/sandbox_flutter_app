import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: WelcomeScreen(),
      title: "Animation",
    ));

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10), // go from 0 to 1 in (3) seconds
      //  upperBound: 100 upperbound  cant be used in animation
    );
    // animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    animation =
        ColorTween(begin: Colors.blue, end: Colors.red).animate(controller);
    //tween animation transistion from say white to red
    controller.forward();
    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });

    /*  animation.addStatusListener((status) {
      print(status);
      if (status == AnimationStatus.completed) {
        controller.reverse(from: 1.0);
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
      //  controlller.reverse(); //play animation
      controller.addListener(() {
        setState(() {});
        print(animation.value);
      });
    });*/
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animation"),

          backgroundColor: animation.value, //Colors.teal,
        ),
        body: Container(
          margin: EdgeInsets.all(1),
          //  color: animation.value, //withOpacity(controller.value),
          child: Container(
              decoration: BoxDecoration(),
              // height: 200,
              // width: 200,
              child: Image.network(
                  "https://images.unsplash.com/"
                  "photo-1432139555190-58524dae6a55?ixlib="
                  "rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1955&q=80",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height)),
        ));
  }
}
