// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomConainerHight = 80.0;
const activeCardColor = Color(0xff1f1f33);
const inactiveCardColor = Color(0xff111328);
const bottomBarColor = Color(0xffEB1555);

enum Gender {
  male,
  femalel,
}

class Inputpage extends StatefulWidget {
  const Inputpage({Key? key}) : super(key: key);

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  // Color maleCardColr = inactiveCardColor;
  // Color femaleCardColr = inactiveCardColor;
  Gender? genderSelected;

  // void updateColor(Gender genderSelected) {
  //   // if (genderSelected == Gender.male) {
  //   //   if (maleCardColr == inactiveCardColor) {
  //   //     maleCardColr = activeCardColor;
  //   //     femaleCardColr = inactiveCardColor;
  //   //   } else {
  //   //     maleCardColr = inactiveCardColor;
  //   //   }
  //   // }
  //
  //   if (genderSelected == Gender.femalel) {
  //     if (femaleCardColr == inactiveCardColor) {
  //       femaleCardColr = activeCardColor;
  //       maleCardColr = inactiveCardColor;
  //     } else {
  //       femaleCardColr = inactiveCardColor;
  //     }
  //   }
  // }

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
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        genderSelected = Gender.male;
                      });
                    },
                    colour: genderSelected == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: ReusableColumn(FontAwesomeIcons.mars, 'Male'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        genderSelected = Gender.femalel;
                      });
                    },
                    colour: genderSelected == Gender.femalel
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: ReusableColumn(FontAwesomeIcons.venus, 'Female'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: () {},
              colour: activeCardColor,
              // cardChild:,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    colour: activeCardColor,
                    //  cardChild: ,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
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
