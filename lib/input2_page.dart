// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
      body: Center(
        child: Text(
          'Body Text',
        ),
      ),
    );
  }
}
