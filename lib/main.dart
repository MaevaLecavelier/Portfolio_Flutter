import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/perso.dart';
import 'package:portfolio/profile.dart';
import 'package:portfolio/scholar.dart';

import 'formation.dart';
import 'package:flutter/rendering.dart';



void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(          // Add the 3 lines from here...
        primaryColor: Color(0xfffaf3dd),
      ),
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
            backgroundColor: Color(0xfffaf3dd),
            icon: Icon(Icons.insert_emoticon, color: Colors.black54),
            title: Text('Profil', style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xfffaf3dd),
            icon: Icon(Icons.business, color: Colors.black54),
            title: Text('Formation', style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xfffaf3dd),
            icon: Icon(Icons.lightbulb_outline , color: Colors.black54),
            title: Text('Projets personnels', style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xfffaf3dd),
            icon: Icon(Icons.school, color: Colors.black54),
            title: Text('Projets scolaires', style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black54,
        onTap: _onItemTapped,
      ),
    );
  }
}