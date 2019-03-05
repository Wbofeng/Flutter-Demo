import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  DetailPageState createState() => new DetailPageState();
}

class DetailPageState extends State<DetailPage> {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
      ),
      body: Center(
        child: Text('Hello World'),
      ),
    );
  }
}