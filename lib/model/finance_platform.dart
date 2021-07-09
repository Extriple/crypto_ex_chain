import 'dart:convert';

import 'package:flutter/widgets.dart';

class FinancePlatform {
  String name;
  String category;
  bool centralized;
  String website_url;

  FinancePlatform({
    @required this.category,
    @required this.name,
    @required this.centralized,
    @required this.website_url,
  });

  factory FinancePlatform.fromJson(Map<String, dynamic> json) {
    return FinancePlatform(
        name: json['name'],
        category: json['category'],
        centralized: json['centralized'],
        website_url: json['website_url']);
  }

  List<FinancePlatform> listFinancePlatformModel = [];
}
