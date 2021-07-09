import 'package:flutter/widgets.dart';

class DefiProducts {
  num defi_market_cap;
  num eth_market_cap;
  num defi_to_eth_ratio;
  num trading_volume_24h;
  num defi_dominance;
  String top_coin_name;
  num top_coin_defi_dominance;

  DefiProducts({
    @required this.defi_dominance,
    @required this.defi_market_cap,
    @required this.defi_to_eth_ratio,
    @required this.eth_market_cap,
    @required this.top_coin_defi_dominance,
    @required this.top_coin_name,
    @required this.trading_volume_24h,
  });

  factory DefiProducts.fromJson(Map<String, dynamic> json) {
    return DefiProducts(
        defi_market_cap: json['defi_market_cap'],
        eth_market_cap: json['eth_market_cap'],
        defi_to_eth_ratio: json['defi_to_eth_ratio'],
        trading_volume_24h: json['trading_volume_24h'],
        defi_dominance: json['defi_dominance'],
        top_coin_name: json['top_coin_name'],
        top_coin_defi_dominance: json['top_coin_defi_dominance']);
  }

  List<DefiProducts> defiProductsListModel = [];
}
