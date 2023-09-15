import 'package:flutter/material.dart';
import 'package:tic_tac_toe_task3/Colors/colors_property.dart';
import 'package:tic_tac_toe_task3/Models/responsive.dart';
import 'package:tic_tac_toe_task3/Screen/Pickup/pickup_screen.dart';
import 'package:tic_tac_toe_task3/Widgets/material_button.dart';

class MyScaffoldBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFddd6f3),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(child: _buildRichText(context)),
            MaterialButtonWidget(
              text: 'Start',
              textSize: ResponsiveUI.getFontSize(35.0),
              textPadding: 12.0,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PickUpScreen()),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildRichText(BuildContext context) {
    return Center(
      child: Text(
        "Welcome to Tic Tac Toe",
        style: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }

  TextSpan _buildTextSpan(
      BuildContext context, String letter, TextStyle textStyle) {
    return TextSpan(
      text: letter,
      style: textStyle.copyWith(
        fontSize: ResponsiveUI.getFontSize(200.0),
      ),
    );
  }
}
