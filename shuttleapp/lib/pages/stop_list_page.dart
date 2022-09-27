import 'package:flutter/material.dart';
import 'package:shuttleapp/model/route.dart' as Route;

class StopListPage extends StatelessWidget {
  const StopListPage({Key? key, required this.route}) : super(key:key);

  final Route.Route route;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 400,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(), // Text Field Goes Here (Start, Stop, Days per week, Price
          
          Expanded(
            child: ListView.builder(itemCount: route.stops.length, itemBuilder: (context, index) {
              return ListTile(); // StopCard Goes Here
            },)
          )
            
          
        ],
      )
    );
  }
}