import 'package:flutter/material.dart';
import 'package:flutter_travel_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate loading or initialization tasks
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the home screen after the splash
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your logo or splash screen content
            Image.asset('assets/images/logo.png', width: 150),
            SizedBox(height: 20),
            CircularProgressIndicator(), // A simple loading spinner
          ],
        ),
      ),
    );
  }
}
