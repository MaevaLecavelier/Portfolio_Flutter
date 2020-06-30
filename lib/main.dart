import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/perso.dart';
import 'package:portfolio/profile.dart';
import 'package:portfolio/scholar.dart';

import 'formation.dart';
//import 'package:flutter/rendering.dart';



void main() {
  //debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    ProfilePage(),
    FormationPage(),
    PersoPage(),
    ScholarPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_emoticon, color: Colors.blueGrey),
            title: Text('Profil'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business, color: Colors.blueGrey),
            title: Text('Formation'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline , color: Colors.blueGrey),
            title: Text('Projets personnels'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Colors.blueGrey),
            title: Text('Projets scolaires'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}