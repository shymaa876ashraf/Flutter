import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  String title;
  int idPost;
  CardWidget({this.idPost, this.title});
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(widget.title), Text("${widget.idPost}")],
        ),
      ),
    );
  }
}
