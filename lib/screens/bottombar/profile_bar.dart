import "package:chords_khmer_app/screens/bottombar/home_bar.dart";
import "package:chords_khmer_app/screens/home_page.dart";
import "package:chords_khmer_app/screens/login.dart";
import "package:flutter/gestures.dart";
import "package:flutter/material.dart";

class ProfileBar extends StatelessWidget {
  const ProfileBar({key});

  @override
  Widget build(BuildContext context) => Scaffold(
    //  appBar: AppBar(
    //   title: Text('Profile'),
    //  ),
     body: ListView(
      padding: EdgeInsets.all(16),
      children: <Widget> [
      Container(
                alignment: Alignment.center,
                height: 60,
                color: Colors.transparent,
                child: Container(
                  child: Text('Login',
                  style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
      TextField(
        decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person_outline),
        labelText: 'Username',
        border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 24),
      TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.lock_outline),
          labelText: 'Password',
        border: OutlineInputBorder(),
        ),
        
      ),
      const SizedBox(height: 32),
      ElevatedButton(
        child: Text('Submit'),
         onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Login()),
            );
          },
        ),
      Container(
        alignment: Alignment.center,
        child: Container(
                  child: Text.rich(
                  TextSpan(
                    text: 'Do not have an account? ',
                    style: TextStyle(fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Register',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.red,
                          ),
                          recognizer: TapGestureRecognizer()
                      ..onTap = () {
                          print('click'); 
                      }),
                      // can add more TextSpans here...
                    ],
                  ),
                )
                ),
      ),
      ],
     ),
    ); 
  }