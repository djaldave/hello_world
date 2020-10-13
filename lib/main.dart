//import a helper library
/*
from fluttr to get content on the screen
*/
import 'package:flutter/material.dart';

//define a "main" function to run when our app starts
void main() {
//create a new text widget to show some text on the screen
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Lets see some images"),
      ),
    ),
  );
//take that widget and get it on the screen
  runApp(app);
}
