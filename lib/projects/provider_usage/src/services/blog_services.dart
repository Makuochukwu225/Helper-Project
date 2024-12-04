import 'dart:convert';

import 'package:helper_project/projects/provider_usage/src/models/blog_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class BlogServices {
  static Future<BlogModel> fetchBlog({
    bool? isPublished = false,
    String? sortBy = "createdAt",
    String? orderBy = "asc",
    String? page = "1",
    String? limit = "10",
    String? archived = "false",
    String? filter = "",
    String? tags = "",
    String? categories = "",
  }) async {
    try {
      var pref = await SharedPreferences.getInstance();
      var token = pref.getString("token");
      var response = await http.get(
        Uri.parse(
          'https://voe.abitnetwork.com/api/v1/blog/post/filter?isFeatured=%2A&isPublished=$isPublished&sortBy=$sortBy&orderBy=$orderBy&page=$page&limit=$limit&archived=$archived',
        ),
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/json',
        },
      );
      if (response.statusCode.toString()[0] == "2") {
        final data = json.decode(response.body);
        return BlogModel.fromJson(data);
      } else {
        throw Exception('Failed to login');
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }
}
