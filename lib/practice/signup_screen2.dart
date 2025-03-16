import 'package:flutter/material.dart';
import 'signup_screen3.dart';

class SignUpScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Account')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'Firstname')),
            TextField(decoration: InputDecoration(labelText: 'Lastname')),
            TextField(decoration: InputDecoration(labelText: 'Email')),
            TextField(decoration: InputDecoration(labelText: 'Phone Number')),
            TextField(decoration: InputDecoration(labelText: 'Nationality')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen3()),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
