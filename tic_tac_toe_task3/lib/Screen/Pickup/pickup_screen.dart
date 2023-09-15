import 'package:flutter/material.dart';
import 'package:tic_tac_toe_task3/Colors/colors_property.dart';
import 'package:tic_tac_toe_task3/Models/player.dart';
import 'package:tic_tac_toe_task3/Models/responsive.dart';
import 'package:tic_tac_toe_task3/Screen/Games/game_screen.dart';
import 'package:tic_tac_toe_task3/Screen/Pickup/gesture_detector.dart';
import 'package:tic_tac_toe_task3/Widgets/material_button.dart';

class PickUpScreen extends StatefulWidget {
  @override
  _PickUpScreenState createState() => _PickUpScreenState();
}

class _PickUpScreenState extends State<PickUpScreen> {
  @override
  void initState() {
    Player.pressed = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text(
          "Tic Tac Toe ",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xFFfbc2eb),
      ),
      body: Container(
        color: Color(0xFFddd6f3),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 28,
              ),
              Text(
                'Choose a side',
                textAlign: TextAlign.center,
                style: kTextStyle.copyWith(
                    fontSize: ResponsiveUI.getFontSize(28.0),
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  MyGestureDetector(
                    onTapFunction: () =>
                        setState(() => Player.pressed = Player.X),
                    containerColor: Player.pressed == Player.X
                        ? kContainerCardColor
                        : kBackgroundColor,
                    text: "X",
                  ),
                  MyGestureDetector(
                    onTapFunction: () =>
                        setState(() => Player.pressed = Player.O),
                    containerColor: Player.pressed == Player.O
                        ? kContainerCardColor
                        : kBackgroundColor,
                    text: "O",
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              MaterialButtonWidget(
                text: 'Start',
                textSize: ResponsiveUI.getFontSize(30.0),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GameScreen())),
              )
            ],
          ),
        ),
      ),
    );
  }
}
