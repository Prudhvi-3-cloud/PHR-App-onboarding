import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // Make sure this path is correct

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PHR App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // Set the initial screen to HomeScreen
    );
  }
}
