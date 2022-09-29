import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shuttleapp/model/app.dart';
import 'package:shuttleapp/pages/stop_list_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: true,
            title: const Text("EasyGo"),
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.transparent,
                child: Center(
                    child: TextField(
                  controller: inputController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search for app...',
                      prefixIcon: const Icon(Icons.search)),
                  onChanged: (val) {
                    inputController.text = val.toString();
                    inputController.selection = TextSelection.fromPosition(
                        TextPosition(offset: inputController.text.length));
                    var app = context.read<App>();
                    app.setKeyword = inputController.text.toString();
                  },
                )),
              ),
            ),
          ),
          // Other Sliver Widgets
          Consumer<App>(
            builder: (context, value, child) {
              var app = context.read<App>();
              if (app.keyword.isEmpty) {
                return SliverList(
                  delegate: SliverChildListDelegate(
                    List.generate(app.routeList.length, (index) {
                      return Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Card(
                              child: ListTile(
                            leading: Container(
                              child: FlutterLogo(),
                            ),
                            title: Text(app.routeList[index].stops[0].name),
                            subtitle:
                                Text(app.routeList[index].stops.last.name),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StopListPage(
                                          route: app.routeList[index])));
                            },
                          )));
                    }),
                  ),
                );
              } else {
                app.filteredRoutes;
                // print(app.keyword);
                // print(app.filtered.length);
                return SliverList(
                  delegate: SliverChildListDelegate(
                    List.generate(app.filtered.length, (index) {
                      return Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Card(
                              child: ListTile(
                            leading: Icon(null),
                            title: Text(app.filtered[index].stops[0].name),
                            subtitle: Text(app.filtered[index].stops.last.name),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StopListPage(
                                          route: app.routeList[index])));
                            },
                          )));
                    }),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
