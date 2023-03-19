import "package:flutter/material.dart";

class HomeBar extends StatelessWidget {
  const HomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView (
          child: Column(
            children: <Widget>[
              Text('Home')
            ]
      ),
    ),
    );
  }
}