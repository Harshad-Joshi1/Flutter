import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("navigation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Text(
            'Third Page',
            style: TextStyle(
              fontSize: 60.0,
              fontWeight: FontWeight.bold
            ),
            ),
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: MaterialButton(
              padding: const EdgeInsets.all(10.0),
              onPressed: (){
                Navigator.pop(context);
              },
              color: Colors.indigo,
              splashColor: Colors.lightBlueAccent,
              child: const Text(
                'Home Page',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white
                )
              ),
            ),
          )
        ],)
      ),
    );
  }
}
  