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
        title: const Text('Projets personnels'),
      ),
      body:Center(
        child: SingleChildScrollView (
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 20.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.bookmark),
                      Text("  Projets", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                _Card("asset/images/projets/eatnslide.jpg", "Eat'n'Slide", "Jeu réalisé avec le logiciel Pico8 en Lua. Réalisé à 2 pour le concours CGI.", "Lua"),
                _Card("asset/images/projets/website.png", "Portfolio - Web", "Site similaire à cette application mais réalisée en Angular 9.", "Angular 9"),
                _Card("asset/images/projets/presrover.jpeg", "Rover marsien", "Projet initié par d'autres étudiants sur lequel j'ai participé en faisant des plans 3D et de la construction.", "Modélisation 3D, C++",),
                _Card("asset/images/skills/flutter.png", "Portfolio - Mobile", "Cette application là :)", "Flutter"),

              ],
            )
        ),
      ),
    );
  }

  Widget _Card(String img, String title, String description, String language){
    return Container(
      height: 160,
      padding: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      decoration: new BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(2, 3),
          )
        ],
        shape: BoxShape.rectangle,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(10.0),
                  width: 80.0,
                  height: 80.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(img),
                    ),
                  )
              ),
              Column(
                children: <Widget>[
                  Text(title, style: TextStyle(fontSize: 18),),
                  Text(language, style: TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 0.0),
            child: Text(description, textAlign: TextAlign.justify,),
          )
        ],
      ),
    );
  }
}