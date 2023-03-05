import 'dart:convert';

import 'package:flutter_restful_api/model/articles.dart';
import 'package:flutter_restful_api/model/news.dart';
import 'package:http/http.dart' as http;

class NewsService {
  Future<List<Articles>> fetchNews(String category) async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=627f254e715d40f4bb389bd7f991863b';
    Uri uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final result = json.decode(response.body);
      News news = News.fromJson(result);
      return news.articles ?? [];
    }
    throw Exception('Bad Request');
  }
}
