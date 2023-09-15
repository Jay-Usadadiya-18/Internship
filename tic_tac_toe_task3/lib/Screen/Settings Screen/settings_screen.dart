import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe_task3/Screen/Settings%20Screen/components/player_settings.dart';
import 'package:tic_tac_toe_task3/Screen/Settings%20Screen/components/score_settings.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          const Divider(thickness: 3.0, height: 0.0),
          const SizedBox(height: 10.0),
          PlayerSettings(playerIndex: 0),
          const SizedBox(height: 7.0),
          const Divider(thickness: 3.0, height: 10.0),
          const SizedBox(height: 5.0),
          PlayerSettings(playerIndex: 1),
          const SizedBox(height: 7.0),
          const Divider(thickness: 3.0, height: 10.0),
          ScoreSettings(0),
          ScoreSettings(1),
        ],
      ),
    );
  }
}
