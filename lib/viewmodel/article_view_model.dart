import 'package:flutter_restful_api/model/articles.dart';

class ArticleViewModel {
  String category;
  List<Articles> articles;
  ArticleViewModel(this.category, this.articles);
}
