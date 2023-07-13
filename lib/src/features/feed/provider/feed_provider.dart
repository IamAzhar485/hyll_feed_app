import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:hyll_app_task/src/features/feed/feed.dart';

class FeedProvider extends ChangeNotifier {
  Future<Feed> fetchAlbum() async {
    final response = await http.get(
      Uri.parse('https://api.hyll.com/api/adventures/'),
    );

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Feed.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load feed');
    }
  }
}
