import 'package:flutter/material.dart';

class SignUpScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Account')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'State of Origin')),
            TextField(decoration: InputDecoration(labelText: 'User\'s Weight')),
            TextField(decoration:
                InputDecoration(labelText: 'User\'s Height')),
            TextField(decoration:
                InputDecoration(labelText: 'User\'s Age')),
            TextField(decoration:
                InputDecoration(labelText: 'User\'s BMI')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle final submission or navigation.
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content:
                      Text('Account successfully created!'),
                ));
              },
              child:
                  Text('Finish'),
            ),
          ],
        ),
      ),
    );
  }
}
