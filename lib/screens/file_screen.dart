import "package:flutter/material.dart";

class KhmerSong extends StatelessWidget {
  const KhmerSong({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Khmer Songs'),
      ),
     body: SingleChildScrollView (
          child: Column(
            children: <Widget>[
              Image.asset('lib/assets/images/sample_chords.png')
            ]
      ),
    ),
    );
  }
}