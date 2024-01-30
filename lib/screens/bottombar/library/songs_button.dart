import 'package:flutter/material.dart';
import 'package:chords_khmer_app/screens/appbar/search_screen.dart';


class SongsButton extends StatelessWidget {
  const SongsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Songs'),
        actions: [
           IconButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const SearchPage())),
                icon: const Icon(Icons.add)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          
        ),
      ),
    );
  }
}