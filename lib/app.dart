// import flutter helper library
import 'package:flutter/material.dart';
//create a clas that will be our custom widget

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

//this class must extend the "StatelessWidget" base class
class AppState extends State<App> {
  int counter = 0;
  void fetchImage() {}
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text("$counter"),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.clear),
          onPressed: fetchImage,
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
