// Consolidate constants for ease of reference
import 'package:flutter/material.dart';

// Instruction Text
const TextStyle instructionStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
const instructions = Text(
    "Player 1 starts first with X, and Player 2 follows with O",
  style: instructionStyle,
);
const double instructionPadding = 20;

// Tic-tac-toe grid dimensions
const gridOuterConstraints = BoxConstraints(
  minWidth: 300,
  minHeight: 300,
  maxWidth: 450,
  maxHeight: 450,
);  // grid size's constraints
const outerPadding = EdgeInsets.all(20);  // Grid's outer padding
const double lineWidth = 10;  // Grid lines
const int cellsPerGrid = 3;  // fixed - tic-tac-toe grid is 3x3
const innerPadding = EdgeInsets.all(8);  // Grid cell's inner padding
const double cellSize = 100;

// Status text
const String p1Name = "Player 1";
const String p2Name = "Player 2";
const String p1Text = "$p1Name's Turn (X)";
const String p2Text = "$p2Name's Turn (O)";
const String resultSuffix = "has won the game!";
