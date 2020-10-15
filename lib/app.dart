// import flutter helper library
import 'package:http/http.dart' show get;
import 'package:flutter/material.dart';
import 'models/image_model.dart';
import 'dart:convert';
//create a clas that will be our custom widget

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

//this class must extend the "StatelessWidget" base class
class AppState extends State<App> {
  int counter = 0;
  void fetchImage() async {
    counter++;
    var response =
        await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));
  }

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
