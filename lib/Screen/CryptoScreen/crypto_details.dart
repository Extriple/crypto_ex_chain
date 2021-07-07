import 'package:crypto_ex_chain/model/coin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CryptoDetailsScreen extends StatelessWidget {
  const CryptoDetailsScreen({this.coinDetails, Key key}) : super(key: key);
  static const routeName = 'CryptoDetailsScreen';
  final Coin coinDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coinDetails.name),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        width: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text(
                        'Price :',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        coinDetails.price.toStringAsFixed(2) + ' USD',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text(
                        'Price Change 24 H :',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        coinDetails.change.toStringAsFixed(3) + ' USD',
                        style: TextStyle(
                          fontSize: 20,
                          color: coinDetails.change.toDouble() < 0
                              ? Colors.red
                              : Colors.green,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text(
                        '% Price Change 24 H :',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        coinDetails.changePercentage.toStringAsFixed(2) + '%',
                        style: TextStyle(
                          fontSize: 20,
                          color: coinDetails.changePercentage.toDouble() < 0
                              ? Colors.red
                              : Colors.green,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text(
                        'Market Cap :',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        coinDetails.marketCap.toString() + ' USD',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text(
                        'MC Change 24H :',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        coinDetails.marketcapchange24h.toString() + ' USD',
                        style: TextStyle(
                          fontSize: 20,
                          color: coinDetails.marketcapchange24h.toDouble() < 0
                              ? Colors.red
                              : Colors.green,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text(
                        'MC % Change 24H :',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        coinDetails.marketcapchangepercentage24h
                                .toStringAsFixed(2) +
                            '%',
                        style: TextStyle(
                          fontSize: 20,
                          color: coinDetails.marketcapchangepercentage24h
                                      .toDouble() <
                                  0
                              ? Colors.red
                              : Colors.green,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text(
                        'High Price 24H :',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        coinDetails.high_24h.toStringAsFixed(2),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text(
                        'Low Price 24H :',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        coinDetails.low_24h.toStringAsFixed(2),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text(
                        'Circulating Supply :',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        coinDetails.circulatingsupply.toStringAsFixed(2),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text(
                        'Total Supply :',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        coinDetails.totalsupply.toString(),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Text(
                        'Ath :',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        coinDetails.ath.toStringAsFixed(2) + ' USD',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
