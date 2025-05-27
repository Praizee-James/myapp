import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32),
              Text(
                "LET’S SIGN YOU IN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Welcome back!",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(height: 32),
              Text("Email", style: TextStyle(fontWeight: FontWeight.w500)),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: '@gmail.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              Text("Password", style: TextStyle(fontWeight: FontWeight.w500)),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
                obscureText: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Handle forgot password
                  },
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _SocialIconButton(icon: Icons.email, onPressed: () {}),
                  SizedBox(width: 12),
                  _SocialIconButton(
                    asset:
                        'assets/google.png', // Place your Google icon in assets
                    onPressed: () {},
                  ),
                  SizedBox(width: 12),
                  _SocialIconButton(
                    asset:
                        'assets/apple.png', // Place your Apple icon in assets
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account? "),
                  GestureDetector(
                    onTap: () {
                      // Handle sign up navigation
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 18),
                  ),
                  onPressed: () {
                    // Handle sign in
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class _SocialIconButton extends StatelessWidget {
  final IconData? icon;
  final String? asset;
  final VoidCallback onPressed;

  const _SocialIconButton({this.icon, this.asset, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[200],
      shape: CircleBorder(),
      child: InkWell(
        customBorder: CircleBorder(),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
              icon != null
                  ? Icon(icon, size: 28)
                  : asset != null
                  ? Image.asset(asset!, width: 28, height: 28)
                  : SizedBox.shrink(),
        ),
      ),
    );
  }
}
