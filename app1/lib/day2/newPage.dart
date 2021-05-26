import 'package:app1/day2/mypage2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My new Page"),
      ),
      body: ListView(
        children: [
          Text("Welcomme My new Page"),
          Image.asset("assets/download.png"),
          CupertinoButton(
              child: Text("Next"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyPage2("data from 1st page")),
                );
              })
        ],
      ),
    );
  }
}
