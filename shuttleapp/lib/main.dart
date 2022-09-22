// main.dart
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove debug banner
      debugShowCheckedModeBanner: false,
      title: 'EasyGo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),

      home: const HomePage()
    );
  }
}

// Home Page
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              const SizedBox(
                height: 400,
                child: Center(
                  child: Text(
                    'Sample text 1',
                  ),
                ),
              ),
              Container(
                height: 1000,
                color: Colors.pink,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
