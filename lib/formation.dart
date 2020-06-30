import 'package:flutter/material.dart';

class FormationPage extends StatefulWidget {
  @override
  _FormationPage createState() => _FormationPage();
}

class _FormationPage extends State<FormationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maëva Lecavelier - profil'),
      ),
      body: Center(
        child: Text("This is formation page."),
      ),
    );
  }
}