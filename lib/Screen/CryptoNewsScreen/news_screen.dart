import 'package:flutter/material.dart';

class NewsCard extends StatefulWidget {
  NewsCard({
    @required this.title,
    @required this.description,
  });

   String title;
   String description;

  @override
  _NewsCardState createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(widget.title),
          Text(widget.description),
        ],
      ),
    );
  }
}
