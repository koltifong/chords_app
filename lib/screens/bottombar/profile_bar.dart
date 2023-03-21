import "package:flutter/material.dart";

class ProfileBar extends StatelessWidget {
  const ProfileBar({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView (
          child: Column(
            children: <Widget>[
              Text('Profile'),
            ]
      ),
    ),
    );
  }
}