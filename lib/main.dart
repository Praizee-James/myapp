import 'package:flutter/material.dart';
import '/home/user/myapp/lib/practice/question_page.dart';
import '/home/user/myapp/lib/practice/user_goal_page.dart';
import '/home/user/myapp/lib/practice/motivation_page.dart';
import '/home/user/myapp/lib/practice/gender_page.dart';



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
      home: OnboardingPage(), // Set OnboardingPage as the initial home screen
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

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
              'https://pplx-res.cloudinary.com/image/upload/v1740064995/user_uploads/UeTKObRtDvPATaB/Onboarding.jpg', // Replace with your actual image path
              width: 500,
              height: 500,
            ),
            SizedBox(height: 20),

            // App Name
            
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnboardingPage2()),
                  );
                },
                child: Text('Continue'),
              ),
          ],
        ),
      ),
    );
  }
}


class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

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
              'https://pplx-res.cloudinary.com/image/upload/v1740076382/user_uploads/wvGwTyZkvFrkDfV/onboarding2.jpg', // Replace with your actual image path
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),

            // App Name
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 30,
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
            SizedBox(height: 40),

            // Hello There Text
            Text(
              'Hello there!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),

            // Are you ready Text
            Text(
              'Are you ready for a\ntop level diet experience?',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),

            // Let's go Button
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to the main page
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "Let's go",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),

            // Already have an account?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // TODO: Navigate to sign in screen
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            // Terms of Service
            Text(
              "You will be accepting our Terms of Service and Privacy Policy",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
