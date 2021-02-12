// Models the grid in TicTacToe (see screens/tictactoe.dart)
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

var logger = Logger(
    printer: PrettyPrinter()
);

class TicTacToeModel extends ChangeNotifier {
  int _counter = 0;  // number of valid inputs thus far
  List<String> _contents = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];
  bool _hasEnded = false;

  List<String> get contents => _contents;
  bool get hasEnded => _hasEnded;

  set hasEnded(gameEnded) {
    _hasEnded = gameEnded;
  }

  bool isLastMove() {
    if (_counter < 8) {
      return false;
    }
    else return true;
  }

  int turn() {
    if (_counter%2 == 0) {
      return 1;  // Player 1's turn
    }
    else return 2;  // Player 2's turn
  }

  void setContents(int index,) {
    if (_contents[index].isEmpty) {
      if (turn() == 1) {
        _contents[index] = "X";
        _counter += 1;
        notifyListeners();
      }
      else {
        _contents[index] = "O";
        _counter += 1;
        notifyListeners();
      }
    }
    else {
      logger.i("Cell with index $index is not empty! Contents: ${_contents[index]}");
    }
  }

  void reset() {
    _counter = 0;
    _contents = [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ];
    _hasEnded = false;
    notifyListeners();
    return;
  }
}