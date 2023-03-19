import "package:flutter/material.dart";

class AddBar extends StatelessWidget {
  const AddBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView (
          child: Column(
            children: <Widget>[
              Text('Add'),
            ]
      ),
    ),
    );
  }
}