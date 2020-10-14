// import flutter helper library
import 'package:flutter/material.dart';
//create a clas that will be our custom widget

//this class must extend the "StatelessWidget" base class
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.clear),
          onPressed: () {
            print("testing print");
          },
        ),
        appBar: AppBar(
          title: Text("Lets see some images"),
        ),
      ),
    );
  }
}

//must define a "build" method that returns

//the widget that *this* widget will show
