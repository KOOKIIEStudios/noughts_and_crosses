// Home: Main (and only) window.
// Standard libraries
import 'package:flutter/material.dart';
// External Libraries
import 'package:logger/logger.dart';
// Internal
import 'constants.dart';
import 'tictactoe.dart';
import 'status.dart';
import 'buttons.dart';

var logger = Logger(
    printer: PrettyPrinter()
);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    logger.d("Start building Home");
    return Scaffold(
      body: Center(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: ResetButton(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
