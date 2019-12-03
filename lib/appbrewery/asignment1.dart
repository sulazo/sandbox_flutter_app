import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' show TargetPlatform;

void main() {
  runApp(MaterialApp(
    home: Assignment1(),
    theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xff0a0e21),
      scaffoldBackgroundColor: Color(0xff0a0e21),
    ),
    title: 'Ass1',
  ));
}

String selectedCurrency = "USD";

class Assignment1 extends StatefulWidget {
  @override
  _Assignment1State createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  List<String> currencyList = [
    "USD",
    "AUD",
    "CAD",
    "NGN",
    "CFA",
    "NZD",
    "DHS",
    "YEN",
    "EUR",
    "XFA",
    "GHS"
  ];
  List<String> listOfNumbers = ['one', 'two', 'three', 'four', "five"];
  String selectedNumber = 'one';

  @override
  Widget build(BuildContext context) {
    // getDropdownItems();
    return Scaffold(
      appBar: AppBar(
/*
        leading: DropdownButton(
            items:DropdownMenuItem(
                child: Text("x"),
                value: "usd") ,
           // onChanged: null
        ),
*/
        title: Text("assignment1"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 18, 18, 0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 5,
              //  color: Colors.blue,
              child: Container(
                  //    color: Colors.pinkAccent,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    child: Text("BTC=?USD"),
                  )),
            ),
          ),
          Container(
              //alignment: Alignment.center,
              padding: EdgeInsets.all(30),
              //  width: 450,
              height: 150,
              //  color: Colors.pink[100],
              child: CupertinoPicker(
                useMagnifier: true,
                magnification: 1,
                looping: true,
                backgroundColor: Color(0xff0a0e21),
                itemExtent: 32,
                onSelectedItemChanged: ((onsSelectedItem) {
                  print(onsSelectedItem);
                }),
                children: currencyList.map((x) => Text(x)).toList(),
                /*[
                    Text("USD"),
                    Text("AUD"),
                    Text("NGN"),
                    Text("GBP"),
                    Text("CAD"),
                    Text("YEN"),
                    Text("EUR"),
                    Text("AED"),
                    Text("CFA"),
                    Text("GHS"),
                  ]*/
              )
              /* DropdownButton(
                  value: selectedNumber,
                  items: listOfNumbers
                      .map((value) => DropdownMenuItem(
                            child: Text(value),
                            value: value,
                          ))
                      .toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedNumber = newValue;
                    });
                  })*/

              /* DropdownButton<String>(
                  value: selectedCurrency,
                  //  items: getDropdownItems(),
                  items: currencyList
                      .map((x) => DropdownMenuItem(value: x, child: Text(x)))
                      .toList(),
                  */ /* [
                    DropdownMenuItem(value: "usd", child: Text("USD")),
                    DropdownMenuItem(value: "gbp", child: Text("GBP")),
                    DropdownMenuItem(value: "den", child: Text("DEN")),
                    DropdownMenuItem(value: "eur", child: Text("EUR")),
                    DropdownMenuItem(value: "cad", child: Text("CAD")),
                  ],*/ /*
                  onChanged: (newValue) {
                    setState(() {
                      selectedCurrency = newValue;
                    });
                    print(newValue);
                  })),*/
              )
        ],
      ),
    );
  }

  List<Text> getPickerList() {
    List<Text> widgetList =
        []; //very important for lust and maps declare it empty
    for (String curensy in currencyList) {
      widgetList.add(Text(
          curensy)); // while looping tru the list create Text widget and assign var currency as a property of widget then return list
      //var listOfWidgets = Text(curensy);
      // widgetList.add(listOfWidgets);
    }
    return widgetList;
  }
}

/*
List getDropdownItems() {
  List<DropdownMenuItem<String>> dropDownItems = [];
  */
/* for (String currency in currencyList) {
    Widet newItem = DropdownMenuItem(
      value: currency,
      child: Text(currency),
    );
    dropDownItems.add(newItem);
  }*/ /*

  // return dropDownItems;
  // print(dropDownItems[]);
}*/
