// App: the main structure that encloses everything.
// Standard libraries
import 'package:flutter/material.dart';
// External Libraries
import 'package:logger/logger.dart';
// Internal
import 'screens/home.dart';

var logger = Logger(
    printer: PrettyPrinter()
);

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    logger.i("Now fetching the home screen...");
    // Placing this high up to allow addition of status bars
    // and other features in the future
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
