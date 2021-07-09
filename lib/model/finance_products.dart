import 'package:flutter/material.dart';

class FinanceProducts {
  String platform;
  String identifier;
  String supply_rate_percentage;

  FinanceProducts({
    @required this.platform,
    @required this.identifier,
    @required this.supply_rate_percentage,
  });

  factory FinanceProducts.fromJson(Map<String, dynamic> json) {
    return FinanceProducts(
        platform: json['platform'],
        identifier: json['identifier'],
        supply_rate_percentage: json['supply_rate_percentage']);
  }
  List<FinanceProducts> financeProductList = [];
}
