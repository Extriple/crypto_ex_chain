import 'package:flutter/material.dart';

final Map ohlcvWidthOptions = {
  "1h": [
    ["1m", 60, 1, "minute"],
    ["2m", 30, 2, "minute"],
    ["3m", 20, 3, "minute"]
  ],
  "6h": [
    ["5m", 72, 5, "minute"],
    ["10m", 36, 10, "minute"],
    ["15m", 24, 15, "minute"]
  ],
  "12h": [
    ["10m", 72, 10, "minute"],
    ["15m", 48, 15, "minute"],
    ["30m", 24, 30, "minute"]
  ],
  "24h": [
    ["15m", 96, 15, "minute"],
    ["30m", 48, 30, "minute"],
    ["1h", 24, 1, "hour"]
  ],
  "3D": [
    ["1h", 72, 1, "hour"],
    ["2h", 36, 2, "hour"],
    ["4h", 18, 4, "hour"]
  ],
  "7D": [
    ["2h", 86, 2, "hour"],
    ["4h", 42, 4, "hour"],
    ["6h", 28, 6, "hour"]
  ],
  "1M": [
    ["12h", 60, 12, "hour"],
    ["1D", 30, 1, "day"]
  ],
  "3M": [
    ["1D", 90, 1, "day"],
    ["2D", 45, 2, "day"],
    ["3D", 30, 3, "day"]
  ],
  "6M": [
    ["2D", 90, 2, "day"],
    ["3D", 60, 3, "day"],
    ["7D", 26, 7, "day"]
  ],
  "1Y": [
    ["7D", 52, 7, "day"],
    ["14D", 26, 14, "day"]
  ],
};

class PercentBarChartChangeStatus extends StatelessWidget {
  PercentBarChartChangeStatus({this.snapshot});
  final Map snapshot;

  @override
  Widget build(BuildContext context) {
    snapshot.forEach((key, value) {
      if (value == null) {
        snapshot[key] = 0;
      }
    });
    return Container(
      padding: EdgeInsets.only(left: 6.0, right: 6.0, bottom: 6.0, top: 6.0),
      decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.yellow, width: 2),
          ),
          color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("1h", style: TextStyle(color: Colors.white, fontSize: 15)),
              Padding(padding: EdgeInsets.only(right: 3.0)),
              Text(
                  snapshot["CHANGEPCTHOUR"] >= 0
                      ? "+" + snapshot["CHANGEPCTHOUR"].toStringAsFixed(2) + "%"
                      : snapshot["CHANGEPCTHOUR"].toStringAsFixed(2) + "%",
                  style: Theme.of(context).primaryTextTheme.bodyText1.apply(
                      color: snapshot["CHANGEPCTHOUR"] >= 0
                          ? Colors.green
                          : Colors.red))
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("24h", style: TextStyle(fontSize: 15, color: Colors.white)),
              Padding(padding: EdgeInsets.only(right: 3.0)),
              Text(
                  snapshot["CHANGEPCT24HOUR"] >= 0
                      ? "+" +
                      snapshot["CHANGEPCT24HOUR"].toStringAsFixed(2) +
                      "%"
                      : snapshot["CHANGEPCT24HOUR"].toStringAsFixed(2) + "%",
                  style: Theme.of(context).primaryTextTheme.bodyText1.apply(
                      color: snapshot["CHANGEPCT24HOUR"] >= 0
                          ? Colors.green
                          : Colors.red))
            ],
          ),
        ],
      ),
    );
  }
}