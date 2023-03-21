import "package:flutter/material.dart";


// Search Page
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          // padding: const EdgeInsets.all(tDefaultsize),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(borderRadius: BorderRadius.circular(100),
                child: const Image(image: AssetImage('lib/assets/images/profile.png')),
                ),
              ),
              const SizedBox(height: 20),
              Text('Tifong'),
            ],
          ),
        ),
      ),
    );
  }
}