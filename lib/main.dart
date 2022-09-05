// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'input2_page.dart';

void main() {
  runApp(const BMICalculater());
}

class BMICalculater extends StatelessWidget {
  const BMICalculater({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff0A0E21),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff0A0E21),
        ),
      ),
      home: Inputpage(),
    );
  }
}
