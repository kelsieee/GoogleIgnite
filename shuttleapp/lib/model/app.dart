import 'package:flutter/material.dart';
import 'stop.dart';
import './route.dart';

class App extends ChangeNotifier {
  String keyword;
  List<RouteModel> filtered = [];

  List<RouteModel> routeList = [
    RouteModel(
      '001',
      '001',
      DateTime.parse('2022-09-26 08:30:00'),
      [true, true, true, false, false, true, false],
      2.50,
      'SMRT',
      [stopSample1, stopSample2, stopSample3, stopSample10],
    ),
    RouteModel(
      '002',
      '002',
      DateTime.parse('2022-09-27 09:15:00'),
      [true, true, true, false, false, true, false],
      3.50,
      'SMRT',
      [stopSample9, stopSample10],
    ),
    RouteModel(
      '003',
      '003',
      DateTime.parse('2022-09-27 19:15:00'),
      [true, true, true, false, false, true, false],
      1.50,
      'SMRT',
      [stopSample3, stopSample8],
    ),
    RouteModel(
      '004',
      '004',
      DateTime.parse('2022-09-28 19:15:00'),
      [true, true, true, false, false, true, false],
      2.50,
      'SMRT',
      [stopSample4, stopSample3, stopSample2],
    ),
    RouteModel(
      '005',
      '005',
      DateTime.parse('2022-09-28 19:15:00'),
      [true, true, true, false, false, true, false],
      2.50,
      'SMRT',
      [stopSample5, stopSample8],
    ),
    RouteModel(
      '006',
      '006',
      DateTime.parse('2022-09-28 19:15:00'),
      [true, true, true, false, false, true, false],
      2.50,
      'SMRT',
      [stopSample6, stopSample7, stopSample8],
    ),
    RouteModel(
      '007',
      '007',
      DateTime.parse('2022-09-28 19:15:00'),
      [true, true, true, false, false, true, false],
      2.50,
      'SMRT',
      [stopSample7, stopSample10],
    ),
    RouteModel(
      '008',
      '008',ç
      DateTime.parse('2022-09-28 19:15:00'),
      [true, true, true, false, false, true, false],
      2.50,
      'SMRT',
      [stopSample3, stopSample7],
    ),
    RouteModel(
      '009',
      '009',
      DateTime.parse('2022-09-28 19:15:00'),
      [true, true, true, false, false, true, false],
      2.50,
      'SMRT',
      [stopSample9, stopSample8],
    ),
    RouteModel(
      '010',
      '010',
      DateTime.parse('2022-09-28 19:15:00'),
      [true, true, true, false, false, true, false],
      2.50,
      'SMRT',
      [stopSample5, stopSample2],
    )
  ];
  set setKeyword(String value) {
    keyword = value;
    notifyListeners();
  }

// logic for filtering
  get filteredRoutes {
    filtered = [];
    for (var i = 0; i < routeList.length; i++) {
      if ((routeList[i].stops[0].name.contains(keyword)) ||
          (routeList[i].stops.last.name.contains(keyword))) {
        filtered.add(routeList[i]);
      }
    }
    return filtered;
  }

  App(this.keyword);
}
