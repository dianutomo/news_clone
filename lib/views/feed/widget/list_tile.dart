import 'package:flutter/material.dart';
import 'package:news_clone/models/feed_model.dart';
//import 'package:news_clone/views/feed/widget/detail_page.dart';

Widget listTile(FeedModel feed, BuildContext context) {
  return InkWell(
    onTap: () {
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => DetailPage(
      //         article: article,
      //       ),
      //     ));
    },
    child: Container(
      //margin: EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        color: Colors.black,
        //borderRadius: BorderRadius.circular(18.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(article.urlToImage.toString()),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Container(
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Text(
              article.source.name,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            article.title.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    ),
  );
}
