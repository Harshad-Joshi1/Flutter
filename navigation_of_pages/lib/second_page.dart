import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SecondPage> {
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
            'Second Page',
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
  