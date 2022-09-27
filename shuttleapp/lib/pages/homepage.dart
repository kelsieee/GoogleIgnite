import 'package:flutter/material.dart';
import 'package:shuttleapp/model/route.dart' as Route;

class HomePage extends StatelessWidget {
  const HomePage({super.key});
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
            title: const Text('EasyGo'),

            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.transparent,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search for app...',
                        prefixIcon: const Icon(Icons.search)),
                  ),
                ),
              ),
            ),
          ),
          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                  child: Text("Available Services")
              ),
              SizedBox(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      for (int index = 1; index < 10; index++)
                        const ListTile(
                          leading: Icon(Icons.album, size: 50),
                          title: Text('Singapore Management University - SMU'),
                          subtitle: Text('To MapleTree Business City'),
                        ),
                    ],
                  ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}


