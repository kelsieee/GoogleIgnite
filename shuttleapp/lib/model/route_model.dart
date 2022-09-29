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
