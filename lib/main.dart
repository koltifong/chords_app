
import 'package:flutter/material.dart';
import 'package:chords_khmer_app/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chords Khmer app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(
     
      ),
    );
  }
}