import 'package:flutter/material.dart';
import 'package:shuttleapp/model/route_model.dart';
import 'package:shuttleapp/widget/stopCard.dart';
import 'package:shuttleapp/widget/routeDetails.dart';

class StopListPage extends StatelessWidget {
  const StopListPage({Key? key, required this.route}) : super(key:key);

  final RouteModel route;


  @override
  Widget build(BuildContext context) {

    String availableDays = frequencyToAvailableDays(route.frequency);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: const Color.fromRGBO(227, 244, 244, 1),
        elevation: 0,
      ),

      body: Column(
        children: [
          RouteDetails(route: route, availableDays: availableDays,),
          Expanded(
            child: ListView.builder(itemCount: route.stops.length, itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                child: Card(
                  color: const Color.fromRGBO(249, 244, 232, 1),
                  child: StopCard(route: route, index: index, availableDays: availableDays,),
                ),
              );
            },)
          )
            
          
        ],
      )
    );
  }
}


String frequencyToAvailableDays(List<bool> frequency) {
  var listOfDays = ['Mon', 'Tues', 'Wed', 'Thurs', 'Fri', 'Sat', 'Sun'];

  String result = "";

  for (var i = 0; i < frequency.length; i++) {
    if (frequency.elementAt(i) == true) {
      result += '${listOfDays.elementAt(i)} ,';
    }
  }

  return result.substring(0, result.length-2);
}


