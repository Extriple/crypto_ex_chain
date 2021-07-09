import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:crypto_ex_chain/Screen/DefiProducts/defi_products_card.dart';
import 'package:crypto_ex_chain/model/defi_products.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class DefiProductsScreen extends StatefulWidget {
  DefiProductsScreen({Key key}) : super(key: key);
  static const rounteName = 'DefiProductsList';

  @override
  _DefiProductsScreenState createState() => _DefiProductsScreenState();
}

class _DefiProductsScreenState extends State<DefiProductsScreen> {
  List<DefiProducts> defiProducts = [];
  Future<DefiProducts> futureDefi;

  Future<DefiProducts> fetch() async {
    http.Response response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/global/decentralized_finance_defi'));
    if (response.statusCode == 200) {
      return DefiProducts.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    futureDefi == fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Defi Products Stats'),
        ),
        body: FutureBuilder<DefiProducts>(
          future: futureDefi,
          builder: (context, index) {
            if (index.hasData) {
              return Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(index.data.defi_to_eth_ratio ?? 'null')
                ],
              ));
            }
          },
        ));
  }
}
