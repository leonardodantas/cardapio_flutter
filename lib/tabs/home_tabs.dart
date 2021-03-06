import 'package:cardapio/tiles/card_tile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class HomePageTabs extends StatelessWidget{
  final _pageController = PageController();
  @override 
  Widget build(BuildContext context){
    return Stack(
      children: <Widget>[
        FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection("home").getDocuments(),
          builder: (context,snapshot){
            if(!snapshot.hasData){
              print(snapshot.hasData);
              return Container(
                height: 600,
                alignment: Alignment.center,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 98, 60, 27)),
                ) ,
              );
            }
            else{
              return ListView(
                children: snapshot.data.documents.map(
                  (doc){
                    return Container(child: Image.network(doc.data["img"]),);
                  }
                ).toList(),
              );
            } 
          },
        ) ,
      ],
    );
  }
}
