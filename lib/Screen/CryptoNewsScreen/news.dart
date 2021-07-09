import 'dart:convert';
import 'dart:async';
import 'package:crypto_ex_chain/Screen/CryptoNewsScreen/news_screen.dart';
import 'package:crypto_ex_chain/model/crypto_news.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewsScreen extends StatefulWidget {
  NewsScreen({Key key}) : super(key: key);
  static const routeName = '/News';

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<CryptoNews> news = [];

  Future<List<CryptoNews>> fetch() async {
   final response = await http.get(Uri.parse('https://api.coingecko.com/api/v3/events'));
   print(response.body);
   List responseJson = json.decode(response.body.toString());
   List<CryptoNews> newsTitle = createNewList(responseJson);
   return newsTitle;
  }

  List<CryptoNews> createNewList(List data) {
    List<CryptoNews> list = [];
    for (int i = 0; i < data.length; i++) {
      String title = data[i]['title'];
      String description = data[i]['description'];

      CryptoNews cryptoNews = new CryptoNews
        (title: title, description: description);
      list.add(cryptoNews);
    }
    return list;
  }


  @override
  void initState() {
    fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('adsad'),
        ),
        body: Container(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: news.length,
            itemBuilder: (context, index) {
              return NewsCard(
                title: news[index].title,
                description: news[index].description,
              );
            },
          ),
        )
    );
  }
}
