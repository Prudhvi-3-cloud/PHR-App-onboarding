import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.dart';

class ApiService {
  final String baseUrl = 'http://localhost:3000';

  Future<void> createAccount(User user) async {
    final response = await http.post(
      Uri.parse('$baseUrl/register'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to create account: ${response.body}');
    }
  }

  Future<void> updateProfile(User user) async {
    final response = await http.put(
      Uri.parse('$baseUrl/update-profile'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update profile: ${response.body}');
    }
  }

  Future<void> login(String abhaNumber, String abhaAddress) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'abhaNumber': abhaNumber,
        'abhaAddress': abhaAddress,
      }),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to log in: ${response.body}');
    }
  }
}
