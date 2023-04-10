import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chords_khmer_app/screens/auth/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage ({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {
  String? errorMessage = '';
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
      email: _controllerEmail.text,
       password: _controllerPassword.text
       );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
      email: _controllerEmail.text,
       password: _controllerPassword.text
       );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _title() {
    return const Text('Firebase Auth');
  }

  Widget _entryField(
    String title,
    TextEditingController controller,
  ) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.person),
        labelText: title,
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget _entryFieldPassword(
      String title,
      TextEditingController controller,
      ) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.lock),
        labelText: title,
      ),
    );
  }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : 'Hmm ? $errorMessage');
  }

  Widget _submitButton() {
    return ElevatedButton(
      onPressed: 
            isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword, 
      child: Text(
          isLogin ? 'Login' : 'Register'),
    );
  }

  Widget _loginOrRegisterButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
        });
      },
      child: Text(isLogin ? 'Register' : 'Login'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: _title(),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _entryField('Email Address', _controllerEmail),
            const SizedBox(height: 20,),
            _entryFieldPassword('Password', _controllerPassword),
            _errorMessage(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _loginOrRegisterButton(),
                _submitButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}