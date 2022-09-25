import 'package:flutter/material.dart';
import 'package:shuttleapp/model/route.dart' as Route;

class RouteDetailsPage extends StatelessWidget {
  const RouteDetailsPage({Key? key, required this.route}) : super(key: key);

  final Route.Route route;


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
            Text("Starting: ${route.firstStop}"),
            Text("Ending: ${route.lastStop}"),
            Text("Ending: ${route.price}"),
          ],
        ),
      ),
    );
  }
}
