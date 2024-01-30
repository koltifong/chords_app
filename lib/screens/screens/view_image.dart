import 'package:flutter/material.dart';

class ViewImage extends StatelessWidget {
  const ViewImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Image'),
        // centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          // padding: const EdgeInsets.all(tDefaultsize),
          child: Column(

          ),
        ),
      ),
    );
  }
}