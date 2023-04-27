import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text('Notifications'),
        centerTitle: true,
          actions: [
           IconButton(
            onPressed: () {},
            icon: const Icon(Icons.playlist_add_check)),
          ],        
        ),
        backgroundColor: const Color.fromRGBO(245, 245, 245, 0.9),
      body: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            GestureDetector(
              child: Container(
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}