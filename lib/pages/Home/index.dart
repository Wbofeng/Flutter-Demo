import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build (BuildContext context) {
    return Center(
      child: FloatingActionButton(
        onPressed: () { Navigator.pushNamed(context, '/Detail'); },
        child: new Icon(Icons.add),
      ),
    );
  }
}