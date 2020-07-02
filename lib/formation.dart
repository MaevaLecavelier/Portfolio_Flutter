import 'dart:math';

import 'package:flutter/cupertino.dart';
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
        title: const Text('Formation'),
      ),
      body: Center(
        child: SingleChildScrollView (
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 20.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.bookmark),
                      Text("  Education", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                _Card("asset/images/polytech.jpg", "Polytech'Nice Sophia", "Cycle ingénieur en spécialité Sciences de l'Informatique.", "Septembre 2019 - (2022)", "BIOT, FRANCE"),
                _Card("asset/images/CAU.jpg", "Chung-Ang University - Echange", "Programmation multi threads, programmation socket (TCP/UDP) et traitement automatique du langage naturel (NLP), base de données, programmation des modules du kernel de Linux...", "Septembre 2019 - Juin 2020", "SÉOUL, CORÉE DU SUD"),
                _Card("asset/images/PeiP.jpg", "Polytech'Nice Sophia - PeiP", "Deux ans de préparation afin d'intégrer le cycle ingénieur du réseau Polytech. Résultat : 10ème/1618", "Septembre 2017 - Juin 2019", "BIOT, FRANCE"),
                _Card("asset/images/Renoir.png", "Lycée Renoir", "Bac S mention TB, spécialité Informatique et Science du Numérique.", "Septembre 2014 - Juin 2017", "CAGNES SUR MER, FRANCE"),

              ],
            )
        ),
      ),
    );
  }

  Widget _Card(String img, String title, String description, String date, String place){
    return Container(
      height: 190,
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
                Text(date, style: TextStyle(color: Colors.black54),),
                Text(place, style: TextStyle(color: Colors.grey)),
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



