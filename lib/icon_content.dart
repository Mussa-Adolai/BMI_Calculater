// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

const lableTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xff8D8E98),
);

class ReusableColumn extends StatelessWidget {
  ReusableColumn(this.icon, this.textCard);
  final IconData icon;
  final String textCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textCard,
          style: lableTextStyle,
        )
      ],
    );
  }
}
