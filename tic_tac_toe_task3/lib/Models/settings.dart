import 'package:flutter/material.dart';

class Settings {
  static List<bool> audioValues = [true, true];
  static List<String> playerRoleNames = ['Player 1 Name', 'Player 2 Name'];
  static List<String> playerNames = ['Player 1', 'Player 2'];

  static List<int> scores = [3, 5];
  static List<String> scoreTitles = ['Win Score ', 'Draw Score'];

  static final TextEditingController controllerP1 = TextEditingController();
  static final TextEditingController controllerP2 = TextEditingController();
  static List<TextEditingController> textControllers = [
    controllerP1,
    controllerP2
  ];

  static void getTextFieldValues() {
    controllerP1.text = playerNames[0];
    controllerP2.text = playerNames[1];
  }

  static void updatePlayerNames() {
    playerNames[0] = controllerP1.text;
    playerNames[1] = controllerP2.text;
  }
}
