import 'package:chords_khmer_app/screens/auth/auth.dart';
import 'package:chords_khmer_app/screens/bottombar/home_bar.dart';
import 'package:chords_khmer_app/screens/bottombar/profile_bar.dart';
import 'package:chords_khmer_app/screens/home_page.dart';
import 'package:chords_khmer_app/screens/auth/login.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) { 
        if (snapshot.hasData) {
          return Home_screen();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}