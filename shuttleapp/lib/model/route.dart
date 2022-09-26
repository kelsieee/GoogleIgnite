import 'stop.dart';

class Route {
  String id;
  String name;
  DateTime date;
  final List<bool> frequency;
  double price;
  String serviceProvider;
  final List<Stop> stops;

  Route(this.id, this.name, this.date, this.frequency, this.price, this.serviceProvider, this.stops);

}

List<Route> routeList = [
        Route(
          '001',
          '001',
          DateTime.parse('2022-09-26 08:30:00'),
          [true, true, true, false, false, true, false],
          2.50,
          'SMRT',
          [stopSample1, stopSample2, stopSample3, stopSample4],
        ),

        Route(
          '002',
          '002',
          DateTime.parse('2022-09-27 09:15:00'),
          [true, true, true, false, false, true, false],
          3.50,
          'SMRT',
          [stopSample2, stopSample1],
        ),
];
