// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:calculater_bmi/components/bottom_button.dart';
import 'package:calculater_bmi/screens/input_page.dart';
import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../reusable_card.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretatin;

  const ResultPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretatin});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculate"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(), //   normal
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult, // number
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretatin,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Inputpage();
                  },
                ),
              );
            },
            buttonTitle: 'Re Calaulate'.toUpperCase(),
          ),
        ],
      ),
    );
  }
}
