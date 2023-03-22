import "package:flutter/material.dart";

class FolderBar extends StatelessWidget {
  const FolderBar({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Icon(Icons.folder_open,
              // size: 66,
              // ),
            ],
      ),
    ),
    );
  }
}