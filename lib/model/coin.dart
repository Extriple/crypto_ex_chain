import 'package:flutter/material.dart';

class Coin {
  Coin({
    this.id,
    @required this.name,
    @required this.symbol,
    @required this.imageUrl,
    @required this.price,
    @required this.change,
    @required this.changePercentage,
    this.marketCap,
    this.totalvolume,
    this.high_24h,
    this.low_24h,
    this.marketcapchange24h,
    this.marketcapchangepercentage24h,
    this.circulatingsupply,
    this.totalsupply,
    this.maxsupply,
    this.ath,
    this.athdate,
  });

  String id;
  String name;
  String symbol;
  String imageUrl;
  num price;
  num change;
  num changePercentage;
  num marketCap;
  num totalvolume;
  num high_24h;
  num low_24h;
  num marketcapchange24h;
  num marketcapchangepercentage24h;
  num circulatingsupply;
  num totalsupply;
  num maxsupply;
  num ath;
  String athdate;

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
        id: json['id'],
        name: json['name'],
        symbol: json['symbol'],
        imageUrl: json['image'],
        price: json['current_price'],
        change: json['price_change_24h'],
        changePercentage: json['price_change_percentage_24h'],
        marketCap: json['market_cap'],
        totalvolume: json['total_volume'],
        high_24h: json['high_24h'],
        low_24h: json['low_24h'],
        marketcapchange24h: json['market_cap_change_24h'],
        marketcapchangepercentage24h: json['market_cap_change_percentage_24h'],
        circulatingsupply: json['circulating_supply'],
        totalsupply: json['total_supply'],
        maxsupply: json['max_supply'],
        ath: json['ath']);
  }
}

List<Coin> coinList = [];
