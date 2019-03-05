class GlobalState {
  var _color;
  get color => _color;

  GlobalState(this._color);
}

enum Action { changeColor }

GlobalState reducer(GlobalState state, action) {
  //匹配Action
  if (action == Action.changeColor) {
    return GlobalState(action.payload);
  }
  return state;
}