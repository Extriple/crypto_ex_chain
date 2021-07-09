import 'package:crypto_ex_chain/Screen/DefiProducts/defi_products_screen.dart';
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
                      Text('Finance Products',
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
                      builder: (context) => DefiProductsScreen()));
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
                      Text('Defi products stats',
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
