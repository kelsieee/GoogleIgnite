// main.dart
import 'package:flutter/material.dart';
import 'package:shuttleapp/pages/buspage.dart';
import 'package:shuttleapp/pages/homepage.dart';
import 'package:shuttleapp/pages/schedulepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),

      home: const MainPage()
    );
  }
}

// Main Page
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // call to setState tells Flutter framework that a navbar icon has been tapped
      // occurs in BottomNavBar section below
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        mouseCursor: SystemMouseCursors.grab,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus_outlined),
            label: 'Bus',
          ),
        ],

      currentIndex: _selectedIndex,
      onTap: _onNavBarTapped,
      ),
    );
  }
}


