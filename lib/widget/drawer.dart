import 'package:cardapio/pages/login_page.dart';
import 'package:cardapio/tiles/drawer_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart' as prefix0;
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final PageController pageController;

  CustomDrawer(this.pageController);
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Color.fromARGB(255, 249, 241, 222),
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: SizedBox(
              child: Image.asset("assets/logo.jpg"),
            ),
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 249, 241, 222)),
          ),
          SizedBox(
            height: 10,
          ),
          DrawerTiler(Icons.home, "Home", pageController, 0),
          DrawerTiler(Icons.home, "Lanches", pageController, 1),
          DrawerTiler(Icons.home, "Sorvetes", pageController, 2),
          DrawerTiler(Icons.home, "Pizzas", pageController, 3),
          Padding(
            padding: EdgeInsets.only(left: 35.0),
            child: ListTile(
              title: Text('Sair',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              onTap: () {
                final FirebaseAuth fireAuth = FirebaseAuth.instance;
                fireAuth.signOut().then((val) {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                });
              },
            ),
          )
        ],
      ),
    ));
  }
}
