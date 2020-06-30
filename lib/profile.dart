import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil', style: TextStyle(color: Colors.black87)),
      ),
      body: Center(
        child: SingleChildScrollView (
          child: Column(
                  children: <Widget>[
                    _ProfilePicture(),
                    _Description(),
                    _Skills(),
                  ],
          )
        ),
      ),
    );
  }

  Widget _ProfilePicture() {
    return Container(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(20.0),
        width: 150.0,
        height: 150.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all (
            color: Colors.black54,
            width: 4,
          ),
          image: new DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("asset/images/photoProfile.jpg")
          ),

        )
      );
  }

  Widget _Description(){
    return Column(
      children: <Widget> [
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
          child: Text("Maëva Lecavelier", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
          child: Text("Etudiante Ingénieure Informatique", style: TextStyle(fontSize: 22),),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.account_circle, size: 18, color: Colors.black54,),
              Text("  21 ans", style: TextStyle(fontSize: 15),),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.location_on, size: 18, color: Colors.black54,),
              Text("  Saint Laurent du Var", style: TextStyle(fontSize: 15),),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.mail, size: 18, color: Colors.black54,),
              Text("  maev.leca@gmail.com", style: TextStyle(fontSize: 15),),
            ],
          ),
        )
      ],
    );
  }


  Widget _Skills(){
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
          child: Row(
            children: <Widget>[
                Icon(Icons.bookmark),
                Text("  Skills", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            createSkill("asset/images/skills/autodesk.png"),
            createSkill("asset/images/skills/unity.png")
          ],
        ),
        Row(
          children: <Widget>[
            Flexible(child: createSkill("asset/images/skills/c.png"),),
            Flexible(child: createSkill("asset/images/skills/java.png"),),
            Flexible(child: createSkill("asset/images/skills/python.png"),),
            Flexible(child: createSkill("asset/images/skills/web.png"),),
            Flexible(child: createSkill("asset/images/skills/flutter.png"),),
          ],
        )
      ],
    );
  }

  Widget createSkill(String name){
    return Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.all(15.0),
        width: 60.0,
        height: 60.0,
        decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          image: new DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(name)
          ),
        )
    );
  }
}

