import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:news_clone/constants/url_constants.dart';
import 'package:news_clone/models/feed_model.dart';
import 'package:news_clone/views/feed/widget/feed_widget.dart';
import 'package:news_clone/views/feed/widget/loading_widget.dart';
import 'package:http/http.dart' as http;

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  List<FeedModel> feedData = [];
  bool loading = false;

  @override
  void initState() {
    super.initState();
    fetchFeed();
  }

  void fetchFeed() async {
    loading = true;
    var response = await http.get(Uri.parse(UrlConstants.feedApi));
    setState(() {
      var data = jsonDecode(response.body);
      if (data['status'] == 1) {
        feedData = List<FeedModel>.from(data["result"]["data"]
            .map((data) => FeedModel.fromJson(data))
            .toList());
      } else {
        feedData = [];
      }
    });
    loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: loading
          ? const LoadingWidget()
          : Scrollbar(
              child: ListView.builder(
              itemCount: feedData.length,
              itemBuilder: (c, i) => FeedWidget(feedData: feedData[i]),
            )),
    );
  }
}
