import 'package:flutter/material.dart';
import '../services/api_service.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController abhaNumberController = TextEditingController();
  final TextEditingController abhaAddressController = TextEditingController();
  final ApiService apiService = ApiService();

  void login() async {
    try {
      await apiService.login(abhaNumberController.text, abhaAddressController.text);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login successful')));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: abhaNumberController,
              decoration: InputDecoration(labelText: 'ABHA Number'),
            ),
            TextField(
              controller: abhaAddressController,
              decoration: InputDecoration(labelText: 'ABHA Address'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
