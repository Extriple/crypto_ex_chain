import 'dart:convert';

import 'package:crypto_ex_chain/Screen/FinanceProducts/finance_products_card.dart';
import 'package:crypto_ex_chain/model/finance_products.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FinanceProductsScreen extends StatefulWidget {
  const FinanceProductsScreen({Key key}) : super(key: key);

  @override
  _FinanceProductsScreenState createState() => _FinanceProductsScreenState();
}

class _FinanceProductsScreenState extends State<FinanceProductsScreen> {
  List<FinanceProducts> financeList = [];
  Future<List<FinanceProducts>> fetchFinanceProducts() async {
    financeList = [];
    final resposne = await http
        .get(Uri.parse("https://api.coingecko.com/api/v3/finance_products"));

    if (resposne.statusCode == 200) {
      List<dynamic> values = [];
      values = json.decode(resposne.body);
      if (values.length > 0) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            financeList.add(FinanceProducts.fromJson(map));
          }
        }
        setState(() {
          financeList;
        });
      }
      return financeList;
    } else {
      throw Exception('Failed to load Finance Products');
    }
  }

  @override
  void initState() {
    fetchFinanceProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finance Products'),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: financeList.length,
        itemBuilder: (context, index) {
          return FinanceProductsCard(
            platform: financeList[index].platform,
            identifier: financeList[index].identifier,
            supply_rate_percentage: financeList[index].supply_rate_percentage,
          );
        },
      ),
    );
  }
}
