import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
      ),
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