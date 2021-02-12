// Models the grid in TicTacToe (see screens/tictactoe.dart)
import 'package:flutter/material.dart';

class TicTacToeModel extends ChangeNotifier {
  int counter = 0;  // number of valid inputs thus far
  List<String> content = [
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

  List<String> get contents => content;

  bool hasEnded() {
    if (counter < 8) {
      return false;
    }
    else return true;
  }

  int turn() {
    if (counter%2 == 0) {
      return 1;  // Player 1's turn
    }
    else return 2;  // Player 2's turn
  }

  void setContents(int index,) {
    if (content[index].isEmpty) {
      if (turn() == 1) {
        content[index] = "X";
        counter += 1;
        notifyListeners();
      }
      else {
        content[index] = "O";
        counter += 1;
        notifyListeners();
      }
    }
    else print("Cell with index $index is not empty! Contents: ${content[index]}");
  }
}