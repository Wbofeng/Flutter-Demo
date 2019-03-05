import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import './states/index.dart';

import './pages/Home/index.dart';
import './pages/User/index.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {
  Widget currentPage; //当前页面
  int currentIndex = 0;
  final List<Widget> tabBodies = [
    new HomePage(),
    new UserPage()
  ];

  void initState() {
    super.initState();
    currentPage = tabBodies[currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector <AppState, Color>(
      converter: (store) => store.state.globalState.color,
      builder: (context, color) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            fixedColor: color,
            currentIndex: currentIndex,
            items:[
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: new Text('首页'),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.person),
                title: new Text('我的')
              )
            ],
            onTap: (index) {
              setState(() {
                currentIndex = index;
                currentPage = tabBodies[currentIndex];
              });
            }
          ),
          body: currentPage,
        );
      }
    );
  }
}
