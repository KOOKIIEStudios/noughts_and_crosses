// Home: Main (and only) window.
// Standard libraries
import 'package:flutter/material.dart';
// External Libraries
import 'package:logger/logger.dart';
// Internal
import 'constants.dart';
import 'tictactoe.dart';
import 'status.dart';

var logger = Logger(
    printer: PrettyPrinter()
);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    logger.d("Start building Home");
    return Scaffold(
      body: Center(
        child: Row (
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(instructionPadding),
                    child: instructions,
                  ),
                  TicTacToe(),
                  Padding(
                    padding: EdgeInsets.all(instructionPadding),
                    child: Status(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 8, 8, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 20, 2, 20),
                    child: notes,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
