// import 'package:flutter/material.dart';
// import 'package:flutter_travel_app/screens/home_screen.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Travel App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomeScreen(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_travel_app/screens/landing_screen.dart'; // Start with the landing screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Go',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingScreen(), // Set the initial screen to LandingScreen
    );
  }
}
