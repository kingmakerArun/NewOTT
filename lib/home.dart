import 'package:flutter/material.dart';
import 'package:newott/space.dart';
import 'Search.dart';
import 'download.dart';
import 'homepage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  int _index=0;

  final pages=
  [
    HomePage(),
    Search(),
    Download(),
    Space(),
  ];
    void tap(g)
  {
    setState(() {
      _index=g;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.download),label: "Downloads"),
          BottomNavigationBarItem(icon: Icon(Icons.spa),label: "My Spaces"),
        ],type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        selectedItemColor: Colors.amber[800],
        onTap: tap,
      ),
    );
  }
}

