import 'package:flutter/material.dart';
import 'package:news_clone/api/api_call.dart';
import 'package:news_clone/models/feed_model.dart';
import 'package:news_clone/views/news/widget/list_tile.dart';

class FeedsScreen extends StatefulWidget {
  const FeedsScreen({super.key});

  @override
  State<FeedsScreen> createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  APICall client = APICall();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Passion News'),
      ),
      body: FutureBuilder(
        future: client.getFeeds(),
        builder:
            (BuildContext context, AsyncSnapshot<List<FeedModel>?> snapshot) {
          if (snapshot.hasData) {
            List<FeedModel>? feeds = snapshot.data;
            return ListView.builder(
              itemCount: feeds!.length,
              itemBuilder: (context, index) => listTile(
                feeds[index],
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
