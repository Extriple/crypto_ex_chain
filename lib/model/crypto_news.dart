import 'package:flutter/widgets.dart';

class CryptoNews {
  String title;
  String description;
  String url;

  CryptoNews({
    @required this.title,
    @required this.description,
    @required this.url,
  });

  factory CryptoNews.fromJson(Map<String, dynamic> json) {
    return CryptoNews(
        title: json['title'],
        description: json['description'],
        url: json['url'],
    );
  }

  List<CryptoNews> cryptoNewsListModel = [];
}
