// To parse this JSON data, do
//
//     final feedModel = feedModelFromJson(jsonString);

import 'dart:convert';
import 'package:news_clone/constants/url_constants.dart';

FeedModel feedModelFromJson(String str) => FeedModel.fromJson(json.decode(str));

String feedModelToJson(FeedModel data) => json.encode(data.toJson());

class FeedModel {
  FeedModel({
    required this.id,
    required this.title,
    required this.imageThumbnail,
    required this.image,
    required this.altImg,
    required this.titleImg,
    required this.description,
    required this.youtubeLink,
    required this.urlpage,
    required this.publishDate,
    required this.publish,
    required this.sortnumber,
    required this.modifiedDatetime,
    required this.modifiedBy,
    required this.featured,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
    required this.deleted,
    required this.seoTitle,
    required this.seoKeyword,
    required this.seoDescription,
  });

  int id;
  String title;
  String imageThumbnail;
  String image;
  String altImg;
  String titleImg;
  String description;
  String youtubeLink;
  String urlpage;
  DateTime publishDate;
  int publish;
  int sortnumber;
  String modifiedDatetime;
  int modifiedBy;
  int featured;
  DateTime createdAt;
  DateTime updatedAt;
  String createdBy;
  String updatedBy;
  int deleted;
  String seoTitle;
  String seoKeyword;
  String seoDescription;

  factory FeedModel.fromJson(Map<String, dynamic> json) => FeedModel(
        id: json["id"],
        title: json["title"],
        imageThumbnail: json["image_thumbnail"],
        image: UrlConstants.assetsUrl + json["image"],
        altImg: json["alt_img"],
        titleImg: json["title_img"],
        description: json["description"],
        youtubeLink: json["youtube_link"],
        urlpage: json["urlpage"],
        publishDate: DateTime.parse(json["publish_date"]),
        publish: json["publish"],
        sortnumber: json["sortnumber"],
        modifiedDatetime: json["modified_datetime"],
        modifiedBy: json["modified_by"],
        featured: json["featured"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        deleted: json["deleted"],
        seoTitle: json["seo_title"],
        seoKeyword: json["seo_keyword"],
        seoDescription: json["seo_description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image_thumbnail": imageThumbnail,
        "image": image,
        "alt_img": altImg,
        "title_img": titleImg,
        "description": description,
        "youtube_link": youtubeLink,
        "urlpage": urlpage,
        "publish_date":
            "${publishDate.year.toString().padLeft(4, '0')}-${publishDate.month.toString().padLeft(2, '0')}-${publishDate.day.toString().padLeft(2, '0')}",
        "publish": publish,
        "sortnumber": sortnumber,
        "modified_datetime": modifiedDatetime,
        "modified_by": modifiedBy,
        "featured": featured,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "created_by": createdBy,
        "updated_by": updatedBy,
        "deleted": deleted,
        "seo_title": seoTitle,
        "seo_keyword": seoKeyword,
        "seo_description": seoDescription,
      };
}
