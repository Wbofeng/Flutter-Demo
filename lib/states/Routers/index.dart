import '../../home.dart';
import '../../pages/Detail/index.dart';

class Routers {
  final _routes = {
    '/': (context) => Home(),
    '/Detail': (context) => DetailPage()
  };

  get routes => _routes;

  Routers();
}