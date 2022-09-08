// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

const bottomConainerHight = 80.0;

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
                  child: ReusableCard(Color(0xff1f1f33)),
                ),
                Expanded(
                  child: ReusableCard(Color(0xff1f1f33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(Color(0xff1f1f33)),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(Color(0xff1f1f33)),
                ),
                Expanded(
                  child: ReusableCard(Color(0xff1f1f33)),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xffEB1555),
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
  ReusableCard(this.colour);
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
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
