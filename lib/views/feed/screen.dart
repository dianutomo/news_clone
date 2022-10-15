import 'package:flutter/material.dart';
import 'package:news_clone/api/api_call.dart';
import 'package:news_clone/models/article_model.dart';
import 'package:news_clone/views/feed/widget/list_tile.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
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
        builder: (BuildContext context,
            AsyncSnapshot<List<ArticleModel>?> snapshot) {
          if (snapshot.hasData) {
            List<ArticleModel>? articles = snapshot.data;
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
