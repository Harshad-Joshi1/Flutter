import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
        home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late int frstNum;
  late int scndNum;
  String txtToDsply = "";
  late String res;
  late String operatorToPerform;

  void onClickBtnFunc(String btnval){
      if( btnval == "C"){
        frstNum = 0;
        scndNum = 0;
        txtToDsply = "";
        res = "";
      }
      else if( btnval == "+" || btnval == "-" || btnval == "x" || btnval == "/"){
        operatorToPerform = btnval;
        txtToDsply = "";
        frstNum = int.parse(txtToDsply);
        res = btnval.toString();
      }
      else if( btnval == "="){
        scndNum = int.parse(txtToDsply);
        if( operatorToPerform == "+"){
          res = (frstNum + scndNum).toString();
        }
        if( operatorToPerform == "-"){
          res = (frstNum - scndNum).toString();
        }
        if( operatorToPerform == "x"){
          res = (frstNum * scndNum).toString();
        }
        if( operatorToPerform == "/"){
          res = (frstNum / scndNum).toString();
        }
      }
      else{
        res = int.parse( txtToDsply + btnval).toString();
      }

      setState(() {
        txtToDsply = res;
      });
  }

  Widget Buttons(String btnval){
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: MaterialButton(
            onPressed: () => onClickBtnFunc(btnval),
            padding: EdgeInsets.all(10.0),
            color: Colors.greenAccent,
            splashColor: Colors.indigo,
            child: Text("$btnval",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                  color: Colors.black,
              ),
            ),
          ),
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator",
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 4.0, color: Colors.black)
                    ),
                    child: Text(
                        "$txtToDsply",
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                  ),
                ),
              ),
            Row(
              children: <Widget>[
                Buttons("9"),
                Buttons("8"),
                Buttons("7"),
                Buttons("+"),
              ]
            ),
            Row(
                children: <Widget>[
                  Buttons("6"),
                  Buttons("5"),
                  Buttons("4"),
                  Buttons("-"),
                ]
            ),
            Row(
                children: <Widget>[
                  Buttons("3"),
                  Buttons("2"),
                  Buttons("1"),
                  Buttons("x"),
                ]
            ),
            Row(
                  children: <Widget>[
                    Buttons("C"),
                    Buttons("0"),
                    Buttons("="),
                    Buttons("/"),
                  ]
            ),
          ]
        )
      ),
    );
  }
}