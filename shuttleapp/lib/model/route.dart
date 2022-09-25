import 'stop.dart';

class Route {
  String id;
  String name;
  String firstStop;
  String lastStop;
  DateTime date;
  final List<bool> frequency;
  double price;
  String serviceProvider;
  final List<Stop> stops;

  Route(this.id, this.name, this.firstStop, this.lastStop, this.date, this.frequency, this.price, this.serviceProvider, this.stops);

  static List<Route> fetchAll() {
    return [
      Route(
        '001',
        '001',
        'Bukit Panjang',
        'Expo',
        DateTime.parse('2022-09-26 08:30:04Z'),
        [true, true, true, false, false, true, false],
        2.50,
        'SMRT',
        [ Stop('1-1', 'Cashew', 'Cashew Drive', '', '', '')],
      ),

      Route(
        '002',
        '002',
        'Woodlands',
        'Chinatown',
        DateTime.parse('2022-09-27 09:15:00Z'),
        [true, true, true, false, false, true, false],
        3.50,
        'SMRT',
        [ Stop('1-1', 'Newton', 'Newton Hawker Centre', '', '', '')],
      ),
    ];
  }
}

List<Route> routeList = [
        Route(
          '001',
          '001',
          'Bukit Panjang',
          'Expo',
          DateTime.parse('2022-09-26 08:30:04Z'),
          [true, true, true, false, false, true, false],
          2.50,
          'SMRT',
          [stopSample1],
        ),

        Route(
          '002',
          '002',
          'Woodlands',
          'Chinatown',
          DateTime.parse('2022-09-27 09:15:00Z'),
          [true, true, true, false, false, true, false],
          3.50,
          'SMRT',
          [stopSample2, stopSample1],
        ),
];
