///===== Tempat memanggil API
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_clone/constants/url_constants.dart';
import 'package:news_clone/models/news_model.dart';
import 'package:news_clone/models/feed_model.dart';

class APICall {
  ///===== Cara pertama untuk melakukan pemanggilan API
  Future<List<NewsModel>?> getArticles() async {
    http.Response response = await http.get(Uri.parse(UrlConstants.newsApi));
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<NewsModel> articles =
          body.map((dynamic item) => NewsModel.fromJson(item)).toList();
      return articles;
    } else {
      throw ('Cannot connect to api');
    }
  }

  Future<List<FeedModel>?> getFeeds() async {
    http.Response response = await http.get(Uri.parse(UrlConstants.feedApi));
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      print(json['result']['data']);
      List<FeedModel> feedData = List<FeedModel>.from(json["result"]["data"]
          .map((data) => FeedModel.fromJson(data))
          .toList());
      return feedData;
    } else {
      throw ('Cannot connect to api');
    }
  }
}
