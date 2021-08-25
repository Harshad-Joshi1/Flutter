import 'package:flutter/material.dart';

void main(){
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  String output = "0";
  String _output = "0";
  double n1 = 0;
  double n2 = 0;
  String operand = "";

  operation(String btntxt){
    if(btntxt == "C"){
      output = "0";
      _output = "0";
      n1 = 0;
      n2 = 0;
      operand = "";
    }
    else if(btntxt == "+" || btntxt == "-" || btntxt == "*" || btntxt == "/" ){
      n1 = double.parse("output");
      operand = btntxt;
      _output = "0";
    }
    else if(btntxt == "="){
      n2 = double.parse("output");

      if(operand == "+"){
        _output = (n1+n2).toString();
      }
      else if(operand == "-"){
        _output = (n1-n2).toString();
      }
      else if(operand == "*"){
        _output = (n1*n2).toString();
      }
      else if(operand == "/"){
        _output = (n1/n2).toString();
      }
    }
    else{
      _output = _output + btntxt;
    }
    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  Widget button(String btntxt) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Expanded(
        child: RawMaterialButton(

          shape: Border.all(color: Colors.indigo, width: 2, style: BorderStyle.solid),
          child: Text("$btntxt", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
          padding: EdgeInsets.all(20.0),
          fillColor: Colors.tealAccent,
          splashColor: Colors.greenAccent,
          onPressed: () {
            operation(btntxt);
          },
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Calculator"),
            backgroundColor: Colors.black,
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(4),

                    // color: Colors.white,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 5),
                    ),
                    alignment: Alignment.bottomRight,
                    child: Text("OUTPUT", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 50)),
                    padding: EdgeInsets.only(bottom: 15, right: 10),

                  ),),
                Row(
                  children: [
                    button("7"),
                    button("8"),
                    button("9"),
                    button("+")
                  ],
                ),
                Row(
                  children: [
                    button("6"),
                    button("5"),
                    button("4"),
                    button("-")
                  ],
                ),
                Row(
                  children: [
                    button("1"),
                    button("2"),
                    button("3"),
                    button("*")
                  ],
                ),
                Row(
                  children: [
                    button("0"),
                    button("C"),
                    button("="),
                    button("/")
                  ],
                ),
               
              ],
            ),
          )
      ),
    );
  }
}

