import 'package:flutter/material.dart';
import 'package:shuttleapp/model/route.dart' as Route;
import 'package:shuttleapp/widget/stopCard.dart';

class StopListPage extends StatelessWidget {
  const StopListPage({Key? key, required this.route}) : super(key:key);

  final Route.Route route;


  @override
  Widget build(BuildContext context) {

    String availableDays = frequencyToAvailableDays(route.frequency);

    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(), // Text Field Goes Here (Start, Stop, Days per week, Price

          Expanded(
            child: ListView.builder(itemCount: route.stops.length, itemBuilder: (context, index) {
              return Padding(
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


