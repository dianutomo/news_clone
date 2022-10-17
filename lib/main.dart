import 'package:flutter/material.dart';
import 'package:news_clone/views/feed/screen.dart';
import 'package:news_clone/views/feed/screen_bak.dart';
import 'package:news_clone/views/news/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn API',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NewsScreen(),
    );
  }
}
