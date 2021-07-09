import 'package:flutter/material.dart';

class FinanceProductsCard extends StatefulWidget {
  FinanceProductsCard({
    @required this.platform,
    @required this.identifier,
    @required this.supply_rate_percentage,
  });

  String platform;
  String identifier;
  String supply_rate_percentage;

  @override
  _FinanceProductsCardState createState() => _FinanceProductsCardState();
}

class _FinanceProductsCardState extends State<FinanceProductsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(widget.platform ?? 'null'),
          Text(widget.identifier ?? 'null'),
          Text(widget.supply_rate_percentage ?? 'null'),
        ],
      ),
    );
  }
}
