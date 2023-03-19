import "package:flutter/material.dart";

class FolderBar extends StatelessWidget {
  const FolderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView (
          child: Column(
            children: <Widget>[
              Text('folder'),
            ]
      ),
    ),
    );
  }
}