import 'package:flutter/material.dart';
import 'package:shuttleapp/model/route.dart' as Route;
import 'package:shuttleapp/model/stop.dart';

class StopCard extends StatelessWidget {

  final Route.Route route;
  final int index;
  final String availableDays;
  const StopCard({super.key, required this.route, required this.index, required this.availableDays});


  @override
  Widget build(BuildContext context) {

    Stop stop = route.stops.elementAt(index);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListTile(
        leading: SizedBox(
          height: 126,
          width: 126,
          child: Image.network(stop.imageUrl),
        ),

        title: Text("Stop ${index + 1}",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Location: ${stop.name}", style: TextStyle(fontSize: 10),),
            Text("Description: ${stop.description}", style: TextStyle(fontSize: 10),),
            Text("Frequency $availableDays", style: TextStyle(fontSize: 10),),
            Text("Fare: \$${route.price}", style: TextStyle(fontSize: 10),),
          ],
        ),
      ),
    );
  }
}


