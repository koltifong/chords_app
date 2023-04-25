import "package:flutter/material.dart";

class FolderButton extends StatelessWidget {
  const FolderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text('Folder'),
        actions: const [
          
        ],
      ),
      backgroundColor: const Color.fromRGBO(245, 245, 245, 0.9),
      body: SingleChildScrollView(
        child: Column(
          
        ),
      ),
    );
  }
}