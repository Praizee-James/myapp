import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eat Right',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingPage(), // To Set OnboardingPage as the initial home screen
    );
  }
}
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo
            Image.network(
              'https://pplx-res.cloudinary.com/image/upload/v1740064995/user_uploads/UeTKObRtDvPATaB/Onboarding.jpg',
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20),

            // App Name
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Eat',
                    style: TextStyle(color: Colors.orange),
                  ),
                  TextSpan(
                    text: 'Right',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            // Let's get started
            Text(
              "Let's get started",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 40),

            // Sign up Button
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to sign up screen
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "Sign up",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),

            // Continue with an account Button
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to continue with account screen
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.black54),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 18, color: Colors.black54),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "Continue with an account",
                style: TextStyle(color: Colors.black87),
              ),
            ),

            SizedBox(height: 20),

            // Or Text
            Text(
              "Or",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 20),

            // Continue with gmail Button
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to continue with gmail screen
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.blue),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 18, color: Colors.blue),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                    'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-web-design-logo-1.png',
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Continue with gmail",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
