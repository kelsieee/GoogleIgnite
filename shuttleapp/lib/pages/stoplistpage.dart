import 'package:flutter/material.dart';
import 'package:shuttleapp/model/route.dart' as Route; // Route is class in navigator.dart as well.

class StopListPage extends StatelessWidget{
  const StopListPage({super.key, required this.route});

  final Route.Route route;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
          Container(
            color: Colors.orangeAccent,
            padding: const EdgeInsets.all(16.0),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Widget for Route Details
                // Start
                // Stop
                // Days per week
                // Price
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(itemCount: route.stops.length, itemBuilder: (context, index) {
              return const Card();  // StopCard Widget
              }
            )
          )
        ],
      )

    );
  }
}