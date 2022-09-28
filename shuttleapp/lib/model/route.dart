import 'stop.dart';

class RouteModel {
  String id;
  String name;
  DateTime date;
  final List<bool> frequency;
  double price;
  String serviceProvider;
  final List<Stop> stops;

  RouteModel(this.id, this.name, this.date, this.frequency, this.price,
      this.serviceProvider, this.stops);
}

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
    '008',
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
