// App: the main structure that encloses everything.
// Standard libraries
import 'package:flutter/material.dart';
// External Libraries
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:desktop_window/desktop_window.dart';
// Internal
import 'screens/home.dart';
import 'models/tictactoe_model.dart';
import 'models/status_model.dart';

var logger = Logger(
    printer: PrettyPrinter()
);

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DesktopWindow.setWindowSize(
      Size(600, 800),
    );
    logger.i("Now fetching the home screen...");
    // Use multiprovider for future extension
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TicTacToeModel>(create: (context) => TicTacToeModel()),
        ChangeNotifierProvider<StatusModel>(create: (context) => StatusModel()),
      ],
      child: MaterialApp(
        title: 'Noughts and Crosses Demo',
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
      ),
    );
  }
}
