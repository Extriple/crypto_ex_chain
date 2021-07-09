import 'package:crypto_ex_chain/Screen/FinancePlatform/finance_platform_card.dart';
import 'package:crypto_ex_chain/model/finance_platform.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class FinancePlatformScreen extends StatefulWidget {
  FinancePlatformScreen({Key key}) : super(key: key);

  @override
  _FinancePlatformScreenState createState() => _FinancePlatformScreenState();
}

class _FinancePlatformScreenState extends State<FinancePlatformScreen> {
  List<FinancePlatform> finanacePlatform = [];
  Future<List<FinancePlatform>> fetch() async {
    finanacePlatform = [];
    final response = await http
        .get(Uri.parse("https://api.coingecko.com/api/v3/finance_platforms"));
    if (response.statusCode == 200) {
      List<dynamic> values = [];
      values = json.decode(response.body);
      if (values.length > 0) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            finanacePlatform.add(FinancePlatform.fromJson(map));
          }
        }
        setState(() {
          finanacePlatform;
        });
      }
      return finanacePlatform;
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
        title: Text("Finance platform list"),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: finanacePlatform.length,
        itemBuilder: (context, index) {
          return FinancePlatformCard(
              name: finanacePlatform[index].name,
              centralized: finanacePlatform[index].centralized,
              platform: finanacePlatform[index].category,
              website: finanacePlatform[index].website_url);
        },
      ),
    );
  }
}
