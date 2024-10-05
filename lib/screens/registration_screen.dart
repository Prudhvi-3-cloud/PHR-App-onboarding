import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/user.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController abhaNumberController = TextEditingController();
  final TextEditingController abhaAddressController = TextEditingController();
  final ApiService apiService = ApiService();

  void createAccount() async {
    User user = User(
      abhaNumber: abhaNumberController.text,
      abhaAddress: abhaAddressController.text,
    );

    try {
      await apiService.createAccount(user);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Account created successfully')));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Account')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: abhaNumberController,
              decoration: InputDecoration(labelText: 'Aadhar Number'),
            ),
            TextField(
              controller: abhaAddressController,
              decoration: InputDecoration(labelText: 'ABHA Address'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: createAccount,
              child: Text('Create Account'),
            ),
          ],
        ),
      ),
    );
  }
}
