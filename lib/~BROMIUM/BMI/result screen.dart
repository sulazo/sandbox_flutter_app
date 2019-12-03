import 'dart:ui';

//import 'package:experiemt_flutter_app/~BROMIUM/BMI/bmi%20calculator.dart';
import 'package:experiemt_flutter_app/~BROMIUM/BMI/constant%20file.dart';
import 'package:experiemt_flutter_app/~BROMIUM/BMI/reusable_card.dart';
import 'package:flutter/material.dart';

//import 'dart:math';
//import 'calculator.dart';

class Result extends StatelessWidget {
  Result({this.getResult, this.getTranslation, this.getStatus});

  final String getResult;
  final String getTranslation;
  final String getStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("BMI Result Page"),
        centerTitle: true,
        //  flexibleSpace: Container(        color: Colors.blueGrey,        ),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: ReUseAbleCard(
              cardChild: Text(
                "Your Result",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              color: Colors.transparent,
            )),
            // Expanded(child: Text("kkkkkkkkk")),
            Expanded(
                flex: 5,
                child: ReUseAbleCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              getResult,
                              style: TextStyle(fontSize: 30),
                            ),

                            // getResult()
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Flexible(
                            child: Text(getStatus),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Flexible(child: Text(getTranslation)),
                          SizedBox(
                            height: 40,
                          ),
                          Flexible(child: Text(getStatus)),
                          Container(
                            alignment: Alignment.center,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pop(context, getResult);
                              },
                              child: Text(
                                "Send data to next Screen",
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w900),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: kBottomContainerColor,
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.all(10),
                            width: double.infinity,
                            height: kBottomContainerHeight,
                            /* Text("info2"),
                      Text("info3"),
                      Text("info4"),
                      Text("info5"),*/ /* */ /*
                  ],
                ),
                color: kActiveCardColor),
          ),
           Container(
            alignment: Alignment.center,
            child: FlatButton(
              onPressed: () {
                Navigator.pop(context, calc.getResult());
              },
              child: Text(
                "Send data to Previous Screen",
                // textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
            decoration: BoxDecoration(
                color: kBottomContainerColor,
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),*/ /*

                        FlatButton(
                            color: Colors.redAccent,
                            onPressed: () {},
                            child: Text("click here"))
                      ],
                    ),
                  ))*/
                          )
                        ])))
          ]),
    );
  }
}
