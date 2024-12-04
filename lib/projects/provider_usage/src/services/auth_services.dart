import 'dart:convert';

import 'package:helper_project/projects/provider_usage/src/models/auth_model.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  static Future<AuthModel> login({
    required String username,
    required String password,
  }) async {
    try {
      // print(username);
      // print(password);
      final response = await http.post(
        Uri.parse('https://voe.abitnetwork.com/api/v1/auth/sign-in'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: json.encode({
          'username': username,
          'password': password,
          'deviceToken': 'your_device_token_here',
        }),
      );
      // print(response.body);
      print(response.statusCode);
      //  0  1  2
      // [2][0][1]
      // if (response.statusCode == 200 || response.statusCode == 201) {
      if (response.statusCode.toString()[0] == "2") {
        final data = json.decode(response.body);
        return AuthModel.fromJson(data);
      }
      if (response.statusCode == 400) {
        const data = "Invalid credential";
        throw data;
      } else {
        throw Exception('Failed to fetch blog');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<AuthModel> register({
    required String username,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse('https://voe.abitnetwork.com/api/v1/auth/sign-in'),
      body: json.encode({
        'username': username,
        'password': password,
        'deviceToken': 'your_device_token_here',
      }),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return AuthModel.fromJson(data);
    }
    if (response.statusCode == 400) {
      const data = "Invalid credential";
      throw data;
    } else {
      throw Exception('Failed to login');
    }
  }

  static Future<AuthModel> requestOtp({
    required String username,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse('https://voe.abitnetwork.com/api/v1/auth/sign-in'),
      body: json.encode({
        'username': username,
        'password': password,
        'deviceToken': 'your_device_token_here',
      }),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return AuthModel.fromJson(data);
    }
    if (response.statusCode == 400) {
      const data = "Invalid credential";
      throw data;
    } else {
      throw Exception('Failed to login');
    }
  }
}

// curl -X 'POST' \
//   'https://voe.abitnetwork.com/api/v1/auth/sign-in' \
//   -H 'accept: */*' \
//   -H 'Content-Type: application/json' \
//   -d '{
//   "username": "string",
//   "password": "string",
//   "deviceToken": "string"
// }'