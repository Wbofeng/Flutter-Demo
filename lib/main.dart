import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import './states/index.dart';
import './home.dart';


void main() {
  final store = Store<AppState>(
    reducer, 
    initialState: AppState()
  );
  runApp(new App(store));
}

class App extends StatelessWidget {
  final Store<AppState> store;
  
  App(this.store);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: store.state.globalState.color,
        ),
        initialRoute: '/',
        routes: store.state.routers.routes,
      )
    );
  }
}