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
            child: Container(
              color: Colors.white,
              child: Text('hello'),
              margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
              padding: EdgeInsets.all(20.0),
              height: 100,
              width: 100,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.indigo,
            child: Icon(
              Icons.add,
            ),
          ),
        )
    );
  }
}
