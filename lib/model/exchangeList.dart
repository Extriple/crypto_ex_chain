import 'package:flutter/widgets.dart';

class ExchangeList {
  String id;
  String name;
  num year_established;
  String country;
  String url;
  String image;
  num trust_score;
  num trust_score_rank;
  num trade_volume_24h_btc;

  ExchangeList(
      {@required this.id,
      @required this.name,
      @required this.year_established,
      @required this.country,
      @required this.trust_score,
      @required this.trust_score_rank,
      @required this.trade_volume_24h_btc,
      @required this.url,
      @required this.image});

  factory ExchangeList.fromJson(Map<String, dynamic> json) {
    return ExchangeList(
        id: json['id'],
        name: json['name'],
        year_established: json['year_established'],
        country: json['country'],
        trust_score: json['trust_score'],
        trust_score_rank: json['trust_score_rank'],
        trade_volume_24h_btc: json['trade_volume_24h_btc'],
        image: json['image'],
        url: json['']);
  }

  List<ExchangeList> exchangeListModel = [];
}
