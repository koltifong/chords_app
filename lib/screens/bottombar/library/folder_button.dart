import "package:flutter/material.dart";
import "package:chords_khmer_app/screens/appbar/search_screen.dart";

class FolderButton extends StatelessWidget {
  const FolderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text('Folder'),
        actions: [
          
        ],
      ),
      backgroundColor: Color.fromRGBO(245, 245, 245, 0.9),
      body: SingleChildScrollView(
        child: Container(
          // padding: const EdgeInsets.all(tDefaultsize),
          child: Column(
            
          ),
        ),
      ),
    );
  }
}