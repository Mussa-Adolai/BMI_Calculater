// ignore_for_file: deprecated_member_use, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //  primaryColor: Color(0xff0A0E21),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xff0A0E21)),
        // primarySwatch: Colors.red,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white), // for text
        ),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Colors.purple), //  floatingActionButton
        //colorScheme: ColorScheme(secondary: Colors.purple), // same above but only here
        scaffoldBackgroundColor: Color(0xff0A0E21),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.cyan),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
