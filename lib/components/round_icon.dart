// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'constants.dart';
import 'package:flutter/material.dart';
import '../screens/input_page.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function statePressed;

  const RoundIconButton({required this.icon, required this.statePressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        statePressed();
      },
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon, color: Colors.redAccent),
    );
  }
}
