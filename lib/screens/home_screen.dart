import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'profile_update_screen.dart';
import 'scan_share_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PHR App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationScreen()),
                );
              },
              child: Text('Create Account'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileUpdateScreen()),
                );
              },
              child: Text('Update Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScanShareScreen()),
                );
              },
              child: Text('Scan & Share'),
            ),
          ],
        ),
      ),
    );
  }
}
