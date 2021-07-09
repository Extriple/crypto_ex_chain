import 'package:crypto_ex_chain/Screen/DefiProducts/defi_products_screen.dart';
import 'package:crypto_ex_chain/Screen/ExchangeList/exchange_list_screen.dart';
import 'package:crypto_ex_chain/Screen/FinancePlatform/finance_platform_screen.dart';
import 'package:crypto_ex_chain/Screen/FinanceProducts/finance_products_screen.dart';
import 'package:flutter/material.dart';

class ProductsListHome extends StatefulWidget {
  ProductsListHome({Key key}) : super(key: key);

  @override
  _ProductsListHomeState createState() => _ProductsListHomeState();
}

class _ProductsListHomeState extends State<ProductsListHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Card(
              margin: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ExchangeListScreen()));
                },
                splashColor: Colors.amberAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.money,
                        size: 80.0,
                        color: Colors.orange,
                      ),
                      Text('Exchange list',
                          style: new TextStyle(fontSize: 18.0))
                    ],
                  ),
                ),
              )),
          Card(
              margin: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FinancePlatformScreen()));
                },
                splashColor: Colors.amberAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.money,
                        size: 80.0,
                        color: Colors.orange,
                      ),
                      Text('Finance platform list',
                          style: new TextStyle(fontSize: 18.0))
                    ],
                  ),
                ),
              )),
          Card(
              margin: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FinanceProductsScreen()));
                },
                splashColor: Colors.amberAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.money,
                        size: 80.0,
                        color: Colors.orange,
                      ),
                      Text('Finance products list',
                          style: new TextStyle(fontSize: 18.0))
                    ],
                  ),
                ),
              )),
          Card(
              margin: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DefiProductScreen()));
                },
                splashColor: Colors.amberAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.money,
                        size: 80.0,
                        color: Colors.orange,
                      ),
                      Text('Defi products statistics',
                          style: new TextStyle(fontSize: 18.0))
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
