import 'dart:convert';
import 'dart:async';
import 'dart:io';
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
  final List<CryptoNews> item = [];

  Future<List<CryptoNews>> fetch() async {
    final http.Response response =
        await http.get(Uri.parse('https://cryptopanic.com/api/v1/posts/?auth_token=5baf1671325bd65d5555bb27bf50af7570417ffa&public=true'),
            headers:{HttpHeaders.authorizationHeader: '5baf1671325bd65d5555bb27bf50af7570417ffa'}
            );
    final Map<String, dynamic> responseData = json.decode(response.body);

    print(responseData);
    responseData['results'].forEach((newsDetails) {
      final CryptoNews cryptoNews = CryptoNews(
          title: newsDetails['title'],
      );

      setState(() {
        item.add(cryptoNews);
      });
    });
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
        title: Text('Crypto News'),
      ),
      body: ListView.builder(
        itemCount: this.item.length,
        itemBuilder: _listViewItemBuilder,
      ),
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var newsDetail = this.item[index];
    return ListTile(
        contentPadding: EdgeInsets.all(10.0),
        //leading: _itemThumbnail(newsDetail),
        title: _itemTitle(newsDetail),

        onTap: () {
          // _navigationToNewsDetail(context, newsDetail);
        });
  }

  void _navigationToNewsDetail(BuildContext context, CryptoNews newsDetail){
  }
  Widget _itemTitle(CryptoNews newsDetail) {
    return Text(newsDetail.title);
  }
}
