import 'package:flutter/material.dart';

class ExchangeListCard extends StatefulWidget {
  ExchangeListCard({
    @required this.id,
    @required this.name,
    @required this.year_established,
    @required this.country,
    @required this.image,
    @required this.trust_score,
    @required this.trust_score_rank,
    @required this.trade_volume_24h_btc,
    @required this.url,
  });

  String id;
  String name;
  num year_established;
  String country;
  String url;
  String image;
  num trust_score;
  num trust_score_rank;
  num trade_volume_24h_btc;

  @override
  _ExchangeListCardState createState() => _ExchangeListCardState();
}

class _ExchangeListCardState extends State<ExchangeListCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
      child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[500],
                offset: Offset(4, 4),
                blurRadius: 10,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-4, -4),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[500],
                        offset: Offset(4, 4),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4, -4),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  height: 60,
                  width: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.network(widget.image),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          widget.name,
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        widget.country ?? '-',
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(widget.year_established.toString() ?? '-'.toString()),
                    Text('Trust Score: '),
                    Text(
                      widget.trust_score.toInt() < 0
                          ? widget.trust_score.toInt().toString()
                          : '+' + widget.trust_score.toInt().toString(),
                      style: TextStyle(
                        color: widget.trust_score.toInt() < 0
                            ? Colors.red
                            : Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Rank : '),
                    Text(
                      widget.trust_score_rank.toInt() < 0
                          ? widget.trust_score_rank.toInt().toString()
                          : '+' + widget.trust_score_rank.toInt().toString(),
                      style: TextStyle(
                        color: widget.trust_score_rank.toInt() < 0
                            ? Colors.red
                            : Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
