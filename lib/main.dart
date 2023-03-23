import 'package:flutter/material.dart';
import 'package:chords_khmer_app/screens/auth/widget_tree.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:chords_khmer_app/screens/home_page.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chords App',
      theme: ThemeData(
         primarySwatch: Colors.grey,
      //   brightness: Brightness.light,
      //   /* light theme settings */
      // ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   /* dark theme settings */
      ),
      home: Home_screen(),    
    ); 
  }
}