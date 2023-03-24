import 'package:chords_khmer_app/screens/appbar/search_screen.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        centerTitle: true,
          actions: [
           IconButton(
            onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const SearchPage())),
            icon: const Icon(Icons.playlist_add_check)),
          ],        
        ),
      body: ListView(
      ),
    );
  }
}