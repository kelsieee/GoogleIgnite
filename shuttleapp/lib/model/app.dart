import 'package:flutter/material.dart';

import './route_model.dart';

class App extends ChangeNotifier {
  final List<RouteModel> routes;
  String keyword;
  final List<RouteModel> filtered = [];

  set setKeyword(String value) {
    keyword = value;
    notifyListeners();
  }

// logic for filtering
  get filteredRoutes {
    RegExp exp = RegExp(keyword);
    for (var i = 0; i < routes.length; i++) {
      if (exp.hasMatch(routes[i].stops[0].name) ||
          exp.hasMatch(routes[i].stops.last.name)) {
        filtered.add(routes[i]);
      }
    }
    return filtered;
  }

  App(this.routes, this.keyword);
}
