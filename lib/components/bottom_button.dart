// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  const BottomButton(
      {super.key, required this.onTap, required this.buttonTitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHight,
        decoration: BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
