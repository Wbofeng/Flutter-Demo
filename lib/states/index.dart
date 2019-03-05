import './GState/index.dart';
import './Routers/index.dart';
import 'package:flutter/material.dart';

class AppState {
  GlobalState globalState;
  Routers routers;

  AppState(){
    this.globalState = GlobalState(Colors.blue);
    this.routers = Routers();
  }
}


AppState reducer(AppState state, action) {
  return state;
}