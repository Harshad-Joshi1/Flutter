import 'package:flutter/material.dart';
import 'package:navigation_of_pages/first_page.dart';
import 'package:navigation_of_pages/second_page.dart';
import 'package:navigation_of_pages/third_page.dart';

void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      routes: {
        '/first': (context) => const FirstPage(),
        '/second': (context) => const SecondPage(),
        '/third': (context) => const ThirdPage()
      },
      debugShowCheckedModeBanner: false,
      title: 'navigation',
      home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HOmePageState createState() => _HOmePageState();
}

class _HOmePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("navigation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Text(
            'Home Page',
            style: TextStyle(
              fontSize: 60.0,
              fontWeight: FontWeight.bold
            ),
            ),
           Padding(
             padding: const EdgeInsets.all(30.0),
             child: MaterialButton(
                padding:  const EdgeInsets.all(1.0),
                onPressed: (){
                  Navigator.pushNamed(context, '/first');
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context) =>  const FirstPage(),
                  //   ),
                  // );
                },
                color: Colors.indigo,
                splashColor: Colors.lightBlueAccent,
                child:  const Text(
                  'First Page',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.white
                  )
                ),
        ),
           ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: MaterialButton(
                padding:  const EdgeInsets.all(1.0),
                onPressed: (){
                  Navigator.pushNamed(context, '/second');
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context) =>  const FirstPage(),
                  //   ),
                  // );
                },
                color: Colors.indigo,
                splashColor: Colors.lightBlueAccent,
                child:  const Text(
                  'Second Page',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.white
                  )
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: MaterialButton(
                padding:  const EdgeInsets.all(1.0),
                onPressed: (){
                  Navigator.pushNamed(context, '/third');
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context) =>  const FirstPage(),
                  //   ),
                  // );
                },
                color: Colors.indigo,
                splashColor: Colors.lightBlueAccent,
                child:  const Text(
                  'Third Page',
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