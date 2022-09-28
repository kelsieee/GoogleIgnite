import 'package:flutter/material.dart';
import 'package:shuttleapp/model/route.dart' as RouteModel;

class RouteDetailsPage extends StatelessWidget {
  const RouteDetailsPage({Key? key, required this.route}) : super(key: key);

  final RouteModel.RouteModel route;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(route.id),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(route.stops.first.imageUrl),
            Text("Starting: ${route.stops.first.name}"),
            Text("Ending: ${route.stops.last.name}"),
            Text("Ending: ${route.price}"),
          ],
        ),
      ),
    );
  }
}
