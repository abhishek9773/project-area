import 'dart:convert';

import 'package:get/get.dart';

class UHttpClient {
  static const String _baseUrl =
      'https://you-api-base-url-com'; // Replace with you API base URL

  // Helper method to make a GET Request

  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Url.parse('$_baseUrl/$endpoint'));
    return _hondleResponse(response);
  }

  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      header: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _headleResponse(response);
  }

  // helper method to make a Put request 
  
}
