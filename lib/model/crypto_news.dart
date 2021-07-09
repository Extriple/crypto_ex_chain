import 'package:flutter/widgets.dart';

class CryptoNews {
  String title;
  String description;

  CryptoNews({@required this.title, @required this.description});

  factory CryptoNews.fromJson(Map<String, dynamic> json) {
    return CryptoNews(title: json['title'], description: json['description']);
  }

  List<CryptoNews> cryptoNewsListModel = [];
}
