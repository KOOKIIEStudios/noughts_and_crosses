// Handles the logic for tic-tac-toe

/*
Tic-Tac-Toe Grid mapping:
 [0] [1] [2]
 [3] [4] [5]
 [6] [7] [8]

 */

String hasWon(List<String> gameState) {
  // Check horizontal
  // Row 1
  if (
    (gameState[0] == gameState [1]) &&
    (gameState[1] == gameState [2])) {
    return gameState[0];
  }
  // Row 2
  else if (
    (gameState[3] == gameState [4]) &&
    (gameState[4] == gameState [5])) {
    return gameState[3];
  }
  // Row 3
  else if (
    (gameState[6] == gameState [7]) &&
    (gameState[7] == gameState [8])) {
    return gameState[6];
  }

  // Check vertical
  // Column 1
  else if (
    (gameState[0] == gameState [3]) &&
    (gameState[3] == gameState [6])) {
    return gameState[0];
  }
  // Column 2
  else if (
    (gameState[1] == gameState [4]) &&
    (gameState[4] == gameState [7])) {
    return gameState[1];
  }
  // Column 3
  else if (
    (gameState[2] == gameState [5]) &&
    (gameState[5] == gameState [8])) {
    return gameState[2];
  }

  // Check diagonal
  // Left to Right
  else if (
    (gameState[0] == gameState [4]) &&
    (gameState[4] == gameState [8])) {
    return gameState[0];
  }
  // Right to Left
  else if (
    (gameState[2] == gameState [4]) &&
    (gameState[4] == gameState [6])) {
    return gameState[2];
  }

  else return "";
}