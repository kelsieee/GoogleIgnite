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
}