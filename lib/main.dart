import 'package:crypto_ex_chain/Screen/CryptoNewsScreen/news.dart';
import 'package:crypto_ex_chain/Screen/CryptoScreen/crypto.dart';
import 'package:crypto_ex_chain/Screen/CryptoScreen/crypto_details.dart';
import 'package:crypto_ex_chain/Screen/DefiProducts/defi_products_screen.dart';
import 'package:crypto_ex_chain/Screen/ExchangeList/exchange_list_screen.dart';
import 'package:crypto_ex_chain/tab/tab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CryptoExChain',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabScreen(),
      routes: {
        TabScreen.routeName: (ctx) => TabScreen(),
        CryptoScreen.routeName: (ctx) => CryptoScreen(),
        CryptoDetailsScreen.routeName: (ctx) => CryptoDetailsScreen(),
        ExchangeListScreen.routeName: (ctx) => ExchangeListScreen(),
        NewsScreen.routeName: (ctx) => NewsScreen(),
        DefiProductScreen.routeName: (ctx) => DefiProductScreen(),
      },
    );
  }
}
