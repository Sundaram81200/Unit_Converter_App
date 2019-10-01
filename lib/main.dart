import 'package:flutter/material.dart';
import 'package:unit_converter/Screens/unitlist.dart';


void main() {
  runApp(
    MaterialApp(
      theme:ThemeData(
        primarySwatch: Colors.purple,
        backgroundColor: Colors.lightBlueAccent
      ),
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: MainScreen(),
    ),
  );
}


