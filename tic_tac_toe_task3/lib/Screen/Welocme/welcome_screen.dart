import 'package:flutter/material.dart';
import 'package:tic_tac_toe_task3/Colors/colors_property.dart';
import 'package:tic_tac_toe_task3/Models/responsive.dart';
import 'package:tic_tac_toe_task3/Screen/Components/alert_dialog.dart';
import 'package:tic_tac_toe_task3/Screen/Components/scaffold_body.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    ResponsiveUI.getDeviceHeight(context);
    ResponsiveUI.getDeviceWidth(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: MyScaffoldBody(),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFfbc2eb),
      title: Text(
        'Tic Tac Toe',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: (20.0), color: Colors.black),
      ),
      leading: IconButton(
        color: kTextColor,
        iconSize: ResponsiveUI.getFontSize(35.0),
        padding: const EdgeInsets.all(0.0),
        onPressed: () => MyAlertDialog.buildAlert(context),
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
    );
  }
}
