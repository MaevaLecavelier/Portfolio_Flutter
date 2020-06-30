import 'package:flutter/material.dart';

class PersoPage extends StatefulWidget {
  @override
  _PersoPage createState() => _PersoPage();
}

class _PersoPage extends State<PersoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maëva Lecavelier - profil'),
      ),
      body: Center(
        child: Text("This is personal projects page."),
      ),
    );
  }
}