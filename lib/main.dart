
import 'package:flutter/material.dart' show AppBar, BuildContext, Center, Icon, Icons, Key, MaterialApp, Scaffold, StatelessWidget, Text, Widget, runApp;

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "App 1",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Day 1"),
          leading: Icon(Icons.home),
        ),
        body: Center(
          child: Text("hello world"),
        )

      ),
    );
  }
}

