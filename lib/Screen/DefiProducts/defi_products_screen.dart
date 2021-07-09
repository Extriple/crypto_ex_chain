import 'dart:convert';
import 'dart:async';
import 'package:crypto_ex_chain/Screen/CryptoNewsScreen/news_screen.dart';
import 'package:crypto_ex_chain/model/crypto_news.dart';
import 'package:crypto_ex_chain/model/defi_products.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DefiProductScreen extends StatefulWidget {
  DefiProductScreen({Key key}) : super(key: key);
  static const routeName = '/DefiProducts';

  @override
  _DefiProductScreenState createState() => _DefiProductScreenState();
}

class _DefiProductScreenState extends State<DefiProductScreen> {
  final List<DefiProducts> item = [];

  Future<List<DefiProducts>> fetch() async {
    final http.Response response =
    await http.get(Uri.parse('https://api.coingecko.com/api/v3/global/decentralized_finance_defi'));
    final Map<String, dynamic> responseData = json.decode(response.body);
    print(responseData);
    responseData['data'].forEach((defi) {
      final DefiProducts defiProducts = DefiProducts(
        defi_dominance: defi['defi_dominance'],
        eth_market_cap: defi['eth_market_cap'],
        defi_market_cap: defi['defi_market_cap'],
        defi_to_eth_ratio: defi['defi_to_eth_ratio'],
        top_coin_defi_dominance: defi['top_coin_defi_dominance'],
        trading_volume_24h: defi['trading_volume_24h'],
        top_coin_name: defi['top_coin_name']


      );
      setState(() {
        item.add(defiProducts);
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
        title: Text('adsad'),
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

  // void _navigationToNewsDetail(BuildContext context, CryptoNews newsDetail){
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context){return Cr(newsDetail);}
  //   ));
  // }

  // Widget _itemThumbnail(CryptoNews newsDetail){
  //   return Container(
  //     constraints: BoxConstraints.tightFor(width: 100.0),
  //     child: newsDetail.url == null ? null : Image.network(newsDetail.url, fit: BoxFit.fitWidth),
  //   );
  // }

  Widget _itemTitle(DefiProducts defiProducts) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Text(defiProducts.defi_dominance.toStringAsFixed(2)),
      Text(defiProducts.defi_market_cap.toStringAsFixed(2)),
        Text(defiProducts.defi_to_eth_ratio.toStringAsFixed(2)),
        Text(defiProducts.eth_market_cap.toStringAsFixed(2)),
        Text(defiProducts.trading_volume_24h.toStringAsFixed(2)),
        Text(defiProducts.top_coin_name),
        Text(defiProducts.top_coin_defi_dominance.toStringAsFixed(2)),

      ],
    );
  }
}
