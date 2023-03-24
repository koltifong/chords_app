import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('គណនី'),
        // centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          // padding: const EdgeInsets.all(tDefaultsize),
          child: Column(
            children: [
              const SizedBox(height: 25,),
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  
                  child: const Image(
                    image: AssetImage('lib/assets/images/profile.png')),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                child: Text('Tifong',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),

                 const SizedBox(height: 5,),
              Container(
                child: Text('Edit your account',
                style: TextStyle(fontSize: 12, color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                 padding: EdgeInsets.all(20),
                child:
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.mail_outline),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
              ),
                 const SizedBox(height: 0),
              Container(
                 padding: EdgeInsets.all(20),
                child:
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
              ),
              const SizedBox(height: 0),
              Container(
                 padding: EdgeInsets.all(20),
                child:
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: Icon(Icons.visibility_off_outlined),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
              ),
              const SizedBox(),
              ElevatedButton(
                 child: Text('Update'),
                onPressed: () {
                  Navigator.pop(context);
                }
                )
            ],
          ),
        ),
      ),
    );
  }
}