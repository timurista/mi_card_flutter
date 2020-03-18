import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Demo'),
      ),
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Text('hello'),
            padding: EdgeInsets.all(10.0),
            width: 100,
            height: double.infinity,
          ),
          Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      color: Colors.yellow,
                      padding: EdgeInsets.all(10.0),
                      height: 100,
                      child: Text('Container 1')),
                  Container(
                    color: Colors.yellow[200],
                    child: Text('Container 2'),
                    padding: EdgeInsets.all(10.0),
                    height: 100,
                  ),
                ]),
          ),

          Container(
            color: Colors.lightGreenAccent[200],
            child: Text('Container 3'),
            padding: EdgeInsets.all(10.0),
            height: double.infinity,
          ),
//                Container(
//                  width: double.infinity,
//                )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        child: Icon(
          Icons.add,
        ),
      ),
    ));
  }
}
