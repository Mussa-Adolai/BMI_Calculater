// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomConainerHight = 80.0;
const activeCardColor = Color(0xff1f1f33);
const bottomBarColor = Color(0xffEB1555);

class Inputpage extends StatefulWidget {
  const Inputpage({Key? key}) : super(key: key);

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
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
                    activeCardColor,
                    Column(
                      children: <Widget>[],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(activeCardColor, cardChild),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(activeCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomBarColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomConainerHight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(this.colour, this.cardChild); // Its Riquired !
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      color: colour,
      decoration: BoxDecoration(
        color: Color(0xff1f1f33),
        // color: Colors.red,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
