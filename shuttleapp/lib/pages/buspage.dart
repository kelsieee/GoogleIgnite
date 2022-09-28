import 'package:flutter/material.dart';
import 'package:shuttleapp/model/route.dart'
    as RouteModel; // Route is class in navigator.dart as well.
import 'package:flutter/cupertino.dart';
import 'package:shuttleapp/pages/route_details_page.dart';
import 'package:shuttleapp/pages/stop_list_page.dart';

class BusPage extends StatelessWidget {
  const BusPage({super.key});

  void updateList(String value) {
    // function that will filter the routes
    // to be completed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          toolbarHeight: 20,
        ),
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.green,
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Pick up at?',
                      isDense: true,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Where to?',
                      isDense: true,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
              child: ListView.builder(itemCount: Route.routeList.length, itemBuilder: (context, index) {
                Route.Route route = Route.routeList[index];
                return Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Image.network(route.stops.first.imageUrl),
                          ]
                        ),
                        Container(
                          color: Colors.orangeAccent,
                          child: ListTile(
                            title: Text.rich(TextSpan(children: [
                              TextSpan(text: route.stops.first.name),
                              const WidgetSpan(child: Icon(Icons.arrow_right)),
                              TextSpan(text: route.stops.last.name),
                            ],),),
                            subtitle: Text(route.date.toString().substring(0,10)),
                            trailing: const Icon(Icons.arrow_forward_ios_rounded),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => RouteDetailsPage(route: route)));
                            },
                            onLongPress: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => StopListPage(route : route)));
                            },
                          )
                        )
                      ],

                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: RouteModel.routeList.length,
                    itemBuilder: (context, index) {
                      RouteModel.RouteModel route = RouteModel.routeList[index];
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(alignment: Alignment.bottomLeft, children: [
                                Image.network(route.stops.first.imageUrl),
                              ]),
                              Container(
                                  color: Colors.orangeAccent,
                                  child: ListTile(
                                    title: Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                              text: route.stops.first.name),
                                          const WidgetSpan(
                                              child: Icon(Icons.arrow_right)),
                                          TextSpan(text: route.stops.last.name),
                                        ],
                                      ),
                                    ),
                                    subtitle: Text(
                                        route.date.toString().substring(0, 10)),
                                    trailing: const Icon(
                                        Icons.arrow_forward_ios_rounded),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RouteDetailsPage(
                                                      route: route)));
                                    },
                                  ))
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ));
  }
}
