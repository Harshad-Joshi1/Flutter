// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'txt_frm_txtfld',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: const HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePagState createState() => _HomePagState();
}

class _HomePagState extends State<HomePage> {

  String myVar = "";
  String txtToDsply = "Default";

  void showtext(){
    setState(() {
      txtToDsply = myVar;
      // debugPrint("Text is: $txtToDsply");
      print("Text is: $txtToDsply");
      // debugPrint(txtToDsply);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get text from textfield"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "$txtToDsply",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
                ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration:  InputDecoration(
                    border: OutlineInputBorder(
                      gapPadding: 4.0
                    ),
                    hintText: "Type something"
                  ),
                onChanged: (text){
                  myVar= text;
                  // debugPrint("")
                },
                style:  TextStyle(
                  color: Colors.purple, 
                  fontSize: 30.0, 
                  fontWeight: FontWeight.bold,
                  )
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(20.0),
              child: MaterialButton(
                onPressed: showtext,
                splashColor: Colors.deepOrangeAccent,
                padding:  EdgeInsets.all(20.0),
                color: Colors.cyanAccent,
                child:  Text(
                  "Press me",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    fontFamily: "Time On Roman",
                    backgroundColor: Colors.tealAccent,    
                  ),
                )    
              ),
            )
          ],
        ),
      ),
    );
  }
}