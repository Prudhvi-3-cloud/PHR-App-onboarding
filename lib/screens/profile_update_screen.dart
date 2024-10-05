import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/user.dart';

class ProfileUpdateScreen extends StatefulWidget {
  @override
  _ProfileUpdateScreenState createState() => _ProfileUpdateScreenState();
}

class _ProfileUpdateScreenState extends State<ProfileUpdateScreen> {
  final TextEditingController abhaNumberController = TextEditingController();
  final TextEditingController abhaAddressController = TextEditingController();
  final ApiService apiService = ApiService();

  void updateProfile() async {
    User user = User(
      abhaNumber: abhaNumberController.text,
      abhaAddress: abhaAddressController.text,
    );

    try {
      await apiService.updateProfile(user);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Profile updated successfully')));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Update Profile')),
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
              onPressed: updateProfile,
              child: Text('Update Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
