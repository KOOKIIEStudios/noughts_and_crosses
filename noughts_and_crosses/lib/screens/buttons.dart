// UI-component for buttons
// Standard libraries
import 'package:flutter/material.dart';
// External Libraries
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
// Internal
import 'constants.dart';
import '../models/status_model.dart';
import '../models/tictactoe_model.dart';

var logger = Logger(
    printer: PrettyPrinter()
);

class ResetButton extends StatelessWidget {
  Widget build(BuildContext context) {
    logger.d("Building Reset Button");
    return Consumer2<StatusModel, TicTacToeModel>(
      builder: (context, status, ticTacToe, child) {
        return Container(
          width: 100,
          height: 60,
          child: OutlinedButton(
            style: buttonStyleGrey,
            onPressed: () {
              logger.i("Game reset!");
              status.reset();
              ticTacToe.reset();
            },
            child: resetButtonText,
          ),
        );
      }
    );
  }
}
