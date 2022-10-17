import 'package:flutter/material.dart';
import 'package:news_clone/api/api_call.dart';
import 'package:news_clone/models/feed_model.dart';
import 'package:news_clone/views/feed/widget/list_tile.dart';

class FeedsScreen extends StatefulWidget {
  const FeedsScreen({super.key});

  @override
  State<FeedsScreen> createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  APICall client = APICall();
  List<FeedModel> feedData = [];
  bool loading = false;

  @override
  void initState() {
    super.initState();
    client.getFeeds();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Passion News'),
      ),
      body: SizedBox(
        child: loading
            ? const CircularProgressIndicator()
            : ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: feedData.length,
                itemBuilder: (context, index) => listTile(
                  feedData[index],
                  context,
                ),
              ),
      ),
    );
  }
}
