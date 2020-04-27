import 'package:experiemt_flutter_app/~BROMIUM/BMI/result%20screen.dart';
import 'package:experiemt_flutter_app/~BROMIUM/BMI/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculator.dart';
import 'constant file.dart';
import 'icon_content.dart';

class BMI extends StatefulWidget {
  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  Gender selectedGender;
  int height = 180;
  int weight = 100;
  int age = 20;
  String bmiC = "";

  double containerHeight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReUseAbleCard(
                        onTap: () {
                          setState(() => selectedGender = Gender.male);
                        },
                        color: selectedGender == Gender.male
                            ? kActiveCardColor
                            : kInActiveCardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: "MALE",
                        ))),
                Expanded(
                  child: ReUseAbleCard(
                      onTap: () {
                        setState(() => selectedGender = Gender.female);
                      },
                      color: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      )),
                )
              ],
            ),
          ),
          //  @@@@@@@@@@@@@center widget
          Expanded(
            child: ReUseAbleCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: TextStyle(fontSize: 15),
                  ),
                  //  SizedBox(height: 5),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(height.toString(),
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(width: 5),
                      Text("cm")
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      thumbColor: Colors.tealAccent,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20),
                      activeTickMarkColor: Colors.white,
                      overlayColor: Colors.white,
                      //overlayShape: ,
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 50,
                      max: 300,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                      // activeColor: Colors.red,
                      inactiveColor: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUseAbleCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("WEIGHT"),
                        SizedBox(height: 10),
                        Text(weight.toString()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment:CrossAxisAlignment.stretch ,
                          children: <Widget>[
                            CircleAvatar(
                                child: IconButton(
                                    icon: Icon(FontAwesomeIcons.plus),
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    })),
                            SizedBox(width: 15),
                            CircleAvatar(
                                // backgroundColor: kActiveCardColor,
                                child: IconButton(
                                    icon: Icon(FontAwesomeIcons.minus),
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    })),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReUseAbleCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("AGE"),
                        SizedBox(height: 10),
                        Text(age.toString()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                                child: IconButton(
                                    icon: Icon(FontAwesomeIcons.plus),
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    })),
                            SizedBox(width: 15),
                            CircleAvatar(
                                child: IconButton(
                                    icon: Icon(FontAwesomeIcons.minus),
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    })),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: () {
                Calc calc = Calc();
                var result = Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Result(
                      getResult: calc.getResult(),
                      getStatus: calc.getStatus(),
                      getTranslation: calc.getTranslation(),
                    ),
                  ),
                );
                if (result != null) {
                  bmiC = calc.getResult();
                  containerHeight = 60;
                }
              },
              child: Center(
                  child: Text(
                "Calculate",
                style: TextStyle(fontSize: 20),
              )),
            ),
            decoration: BoxDecoration(
                color: kBottomContainerColor,
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: containerHeight,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: kBottomContainerColor,
              child: Text(
                "Previous BMI value " + bmiC,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
