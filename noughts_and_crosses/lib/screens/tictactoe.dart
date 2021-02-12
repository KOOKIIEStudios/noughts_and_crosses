// GridView containing the tic-tac-toe UI
// Standard libraries
import 'package:flutter/material.dart';
// External Libraries
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
// Internal
import 'constants.dart';
import '../models/tictactoe_model.dart';
import '../models/status_model.dart';

var logger = Logger(
    printer: PrettyPrinter()
);

// Instantiate TicTacToe
class TicTacToe extends StatelessWidget {
  TicTacToe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    logger.d("Start building TicTacToe");
    return ConstrainedBox(
      constraints: gridOuterConstraints,
      child: GridView.count(
        padding: outerPadding,
        crossAxisSpacing: lineWidth,
        mainAxisSpacing: lineWidth,
        crossAxisCount: cellsPerGrid,
        children: <Widget>[
          GridCell(0),
          GridCell(1),
          GridCell(2),
          GridCell(3),
          GridCell(4),
          GridCell(5),
          GridCell(6),
          GridCell(7),
          GridCell(8),
        ],
      ),
    );
  }
}

class GridCell extends StatefulWidget {
  final int index;
  GridCell(this.index);

  @override
  GridCellState createState() {
    logger.d("Creating state for a GridCell");
    return new GridCellState(this.index);
  }
}

class GridCellState extends State<GridCell> {
  final int index;
  GridCellState(this.index);
  @override
  Widget build(BuildContext context) {
    logger.d("Building GridCell with index: ${this.index}");
    return _gridCell();
  }

  Widget _gridCell() {
    return Consumer2<TicTacToeModel, StatusModel>(
      builder: (context, ticTacToe, status, child) {
        return GestureDetector(
          child: Container(
            padding: innerPadding,
            width: cellSize,
            height: cellSize,
            child: Text("ID: ${this.index}, Contents: ${ticTacToe.contents[this.index]}"),
            color: Colors.black54,
          ),
          onTap: () {
            if (!ticTacToe.hasEnded()) {
              ticTacToe.setContents(this.index);
              if (ticTacToe.turn() == 1) {
                status.statusText = p1Text;
              }
              else {
                status.statusText = p2Text;
              }
            }
            else {
              status.statusText = "placeholder" + resultSuffix;
            }
          },
        );
      },
    );
  }
}
