///===== Tempat memanggil API
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_clone/constants/url_constants.dart';
import 'package:news_clone/models/news_model.dart';
import 'package:news_clone/models/feed_model.dart';

class APICall {
  List<FeedModel> feedData = [];

  ///===== Cara pertama untuk melakukan pemanggilan API
  Future<List<NewsModel>?> getArticles() async {
    http.Response response = await http.get(Uri.parse(UrlConstants.feedApi));
    print(response.statusCode);
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

  Future<void> getFeeds() async {
    http.Response response = await http.get(Uri.parse(UrlConstants.feedApi));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data);
      if (data['status'] == 1) {
        feedData =
            data.map((dynamic item) => FeedModel.fromJson(item)).toList();
      } else {
        feedData = [];
      }
    }
  }

  // Future<List<NewsModel>?> getArticles() async {
  //   var url = Uri.parse(UrlConstants.newsApi);
  //   var response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     List<NewsModel> model = newsModelFromJson(response.body);
  //     return model;
  //   } else {
  //     throw ('Cannot connect to api');
  //   }
  // }

}
