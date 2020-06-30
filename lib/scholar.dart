import 'package:flutter/material.dart';

class ScholarPage extends StatefulWidget {
  @override
  _ScholarPage createState() => _ScholarPage();
}

class _ScholarPage extends State<ScholarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maëva Lecavelier - profil'),
      ),
      body: Center(
        child: Text("This is scholar projects page."),
      ),
    );
  }
}