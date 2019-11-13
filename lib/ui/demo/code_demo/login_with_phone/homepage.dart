import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePhoneNumber extends StatefulWidget {
  @override
  _HomePhoneNumberState createState() => _HomePhoneNumberState();
}

class _HomePhoneNumberState extends State<HomePhoneNumber> {
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TestPhone"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            RaisedButton(
              child: Text('Logout'),
              onPressed: () async {
                await _auth.signOut();
                Navigator.of(context).pushReplacementNamed('/loginpage');
              },
            ),
          ],
        ),
      ),
    );
  }

}