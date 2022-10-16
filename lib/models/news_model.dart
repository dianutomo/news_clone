// To parse this JSON data, do
//
//     final NewsModel = NewsModelFromJson(jsonString);

//import 'dart:convert';

// List<NewsModel> newsModelFromJson(String str) =>
//     List<NewsModel>.from(json.decode(str).map((x) => NewsModel.fromJson(x)));

//String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
  NewsModel({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  Source source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        source: Source.fromJson(json["source"]),
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"],
      );

  // Map<String, dynamic> toJson() => {
  //       "source": source.toJson(),
  //       "author": author,
  //       "title": title,
  //       "description": description,
  //       "url": url,
  //       "urlToImage": urlToImage,
  //       "publishedAt": publishedAt!.toIso8601String(),
  //       "content": content,
  //     };
}

class Source {
  Source({
    required this.id,
    required this.name,
  });

  String? id;
  String name;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"],
      );

  // Map<String, dynamic> toJson() => {
  //       "id": id,
  //       "name": name,
  //     };
}
