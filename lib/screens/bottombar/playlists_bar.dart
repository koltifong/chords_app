import "package:flutter/material.dart";

class PlaylistsBar extends StatelessWidget {
  const PlaylistsBar({key});

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