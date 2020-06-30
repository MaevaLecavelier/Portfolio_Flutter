import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maëva Lecavelier - profil'),
      ),
      body: Column(
        children: <Widget>[
          _ProfilePicture(),
        ],
      )
    );
  }

  Widget _ProfilePicture() {
    return Center(
        child: Container(
            width: 150.0,
            height: 150.0,
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                        "https://i.imgur.com/BoN9kdC.png")
                )
            )),
    );
  }
}

