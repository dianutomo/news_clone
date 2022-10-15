///===== Tempat memanggil API
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_clone/constants/url_constants.dart';
import 'package:news_clone/models/article_model.dart';

class APICall {
  Future<List<ArticleModel>?> getArticles() async {
    http.Response response = await http.get(Uri.parse(UrlConstants.newsApi));
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<ArticleModel> articles =
          body.map((dynamic item) => ArticleModel.fromJson(item)).toList();
      return articles;
    } else {
      throw ('Cannot connect to api');
    }
  }
}
