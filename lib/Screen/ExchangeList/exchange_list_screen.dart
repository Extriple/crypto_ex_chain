import 'package:crypto_ex_chain/Screen/ExchangeList/exchange_list_card.dart';
import 'package:crypto_ex_chain/model/exchangeList.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class ExchangeListScreen extends StatefulWidget {
  static const routeName = '/ExchangeList';
  ExchangeListScreen({Key key}) : super(key: key);

  @override
  _ExchangeListScreenState createState() => _ExchangeListScreenState();
}

class _ExchangeListScreenState extends State<ExchangeListScreen> {
  List<ExchangeList> exchangeList = [];
  Future<List<ExchangeList>> fetch() async {
    exchangeList = [];
    final response =
        await http.get(Uri.parse("https://api.coingecko.com/api/v3/exchanges"));
    if (response.statusCode == 200) {
      List<dynamic> values = [];
      values = json.decode(response.body);
      if (values.length > 0) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            exchangeList.add(ExchangeList.fromJson(map));
          }
        }
        setState(() {
          exchangeList;
        });
      }
      return exchangeList;
    } else {
      throw Exception('Failed to load finance platform');
    }
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
        title: Text('Exchange List'),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: exchangeList.length,
        itemBuilder: (context, index) {
          return ExchangeListCard(
            id: exchangeList[index].id,
            name: exchangeList[index].name,
            country: exchangeList[index].country,
            year_established: exchangeList[index].year_established,
            trade_volume_24h_btc: exchangeList[index].trade_volume_24h_btc,
            trust_score: exchangeList[index].trust_score,
            trust_score_rank: exchangeList[index].trust_score_rank,
            image: exchangeList[index].image,
            url: exchangeList[index].url,
          );
        },
      ),
    );
  }
}
