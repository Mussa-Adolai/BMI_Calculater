// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomConainerHight = 80.0;
const activeCardColor = Color(0xff1f1f33);
const inactiveCardColor = Color(0xff111328);
const bottomBarColor = Color(0xffEB1555);

class Inputpage extends StatefulWidget {
  const Inputpage({Key? key}) : super(key: key);

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Color maleCardColr = inactiveCardColor;
  Color femaleCardColr = inactiveCardColor;
// 1 = male , 2 = female
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColr == inactiveCardColor) {
        maleCardColr = activeCardColor;
        femaleCardColr = inactiveCardColor;
      } else {
        maleCardColr = inactiveCardColor;
      }
    }
    if (gender == 2) {
      if (femaleCardColr == inactiveCardColor) {
        femaleCardColr = activeCardColor;
        maleCardColr = inactiveCardColor;
      } else {
        femaleCardColr = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMICalculater',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColr,
                      cardChild: ReusableColumn(FontAwesomeIcons.mars, 'Male'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColr,
                      cardChild:
                          ReusableColumn(FontAwesomeIcons.venus, 'Female'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
              // cardChild:,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    //  cardChild: ,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    // cardChild:,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomBarColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomConainerHight,
            child: Center(
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
