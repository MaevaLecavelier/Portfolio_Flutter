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
        title: const Text('Profil'),
      ),
      body: Column(
        children: <Widget>[
          _ProfilePicture(),
          _Description(),
        ],
      )
    );
  }

  Widget _ProfilePicture() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(20.0),
        width: 150.0,
        height: 150.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all (
            color: Color(0xffffa69e),
            width: 4,
          ),
          image: new DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("asset/images/photoProfile.jpg")
          ),

        )
      ),
    );
  }

  Widget _Description(){
    return Center(
      child: Text("Hello there"),
    );
  }
}

