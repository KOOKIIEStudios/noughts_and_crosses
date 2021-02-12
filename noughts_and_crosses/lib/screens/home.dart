// Home: Main (and only) window.
// Standard libraries
import 'package:flutter/material.dart';
// External Libraries
import 'package:logger/logger.dart';
// Internal
import 'constants.dart';

var logger = Logger(
    printer: PrettyPrinter()
);

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    logger.d("Start building Home");
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: gridOuterConstraints,
          child: GridView.count(
            padding: outerPadding,
            crossAxisSpacing: lineWidth,
            mainAxisSpacing: lineWidth,
            crossAxisCount: cellsPerGrid,
            children: <Widget>[
              Container(
                padding: innerPadding,
                width: cellSize,
                height: cellSize,
                child: Text("00"),
                color: Colors.black54,
              ),
              Container(
                padding: innerPadding,
                width: cellSize,
                height: cellSize,
                child: Text("01"),
                color: Colors.black54,
              ),
              Container(
                padding: innerPadding,
                width: cellSize,
                height: cellSize,
                child: Text("02"),
                color: Colors.black54,
              ),
              Container(
                padding: innerPadding,
                width: cellSize,
                height: cellSize,
                child: Text("10"),
                color: Colors.black54,
              ),
              Container(
                padding: innerPadding,
                width: cellSize,
                height: cellSize,
                child: Text("11"),
                color: Colors.black54,
              ),
              Container(
                padding: innerPadding,
                width: cellSize,
                height: cellSize,
                child: Text("12"),
                color: Colors.black54,
              ),
              Container(
                padding: innerPadding,
                width: cellSize,
                height: cellSize,
                child: Text("20"),
                color: Colors.black54,
              ),
              Container(
                padding: innerPadding,
                width: cellSize,
                height: cellSize,
                child: Text("21"),
                color: Colors.black54,
              ),
              Container(
                padding: innerPadding,
                width: cellSize,
                height: cellSize,
                child: Text("22"),
                color: Colors.black54,
              ),
            ],
          ),
        ),
      )
    );
  }
}
