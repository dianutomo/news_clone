import 'package:flutter/material.dart';
import 'package:news_clone/api/api_call.dart';
import 'package:news_clone/models/news_model.dart';
import 'package:news_clone/views/news/widget/list_tile.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  APICall client = APICall();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('News Clone'),
      ),
      body: FutureBuilder(
        future: client.getArticles(),
        builder:
            (BuildContext context, AsyncSnapshot<List<NewsModel>?> snapshot) {
          if (snapshot.hasData) {
            List<NewsModel>? articles = snapshot.data;
            return ListView.builder(
              itemCount: articles!.length,
              itemBuilder: (context, index) => listTile(
                articles[index],
                context,
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
