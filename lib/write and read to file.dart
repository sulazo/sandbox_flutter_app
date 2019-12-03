import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

void main() {
  runApp(
    MaterialApp(
      home: FileDetails(),
    ),
  );
}

class FileDetails extends StatefulWidget {
  @override
  _FileDetailsState createState() => _FileDetailsState();
}

class _FileDetailsState extends State<FileDetails> {
  var textEditingController =TextEditingController();
  var formKey = GlobalKey<FormState>();
  String dataEntry = "Empty file";
 // String dataString ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),
        body: Container(
          padding: EdgeInsets.all(5),

          child: Form(


              key: formKey,
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 20),
                  TextFormField(
                    controller: textEditingController,
                    decoration: InputDecoration(hintText: "enter data"),
                  ),
 CircleAvatar( ),
                  RaisedButton(child: Text("Write to file "),
                      onPressed: () {
                    write2File(textEditingController.text);

                      }),
                  RaisedButton(
                      child: Text(" Read from file"),
                      onPressed: () {

                  setState(() {
                     readData().then((content){
                       setState(() {
                         dataEntry =content;
                       });


                     }


                     );
                    //dataEntry=dataString;
                    //dataEntry=dataString.toString();
                  });

                      }),
                  Center(
                      child: Text(
                    dataEntry,
                  ))
                ],
              )),
        ));
  }

  //1.get directory,2.create named file 3.write to file 4.read from file
// get the phone directory path and returns the path name as a string
  Future<String> getDirectoryPath() async {
    final directory = await getApplicationDocumentsDirectory();
    String pathName = directory.path;
    return pathName;
  }

  //create a file name data.text in phones directory or write localFile to directory
  Future<File> getFile() async {
    final localFile = await getDirectoryPath();
    return File('$localFile/data.txt');
  }

  //write to file
  Future<File> write2File(dataMessage) async {
    final file = await getFile();
    return file.writeAsString("$dataMessage");
  }



  Future<String> readData() async {
    try {
      final file = await getFile();
      String data = await file.readAsString();
      return data;
    } catch (e) {
      return "Nothing saved yet";
    }
  }
}
// TODO: add resources here