import "package:flutter/material.dart";

class PlaylistsBar extends StatelessWidget {
  const PlaylistsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView (
          child: Column(
            children: <Widget>[
              Text('Playlists'),
            ]
      ),
    ),
    );
  }
}