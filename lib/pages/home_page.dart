import 'package:cardapio/tabs/home_tabs.dart';
import 'package:cardapio/tabs/lanches_tabs.dart';
import 'package:cardapio/tabs/pizza_tabs.dart';
import 'package:cardapio/tabs/sorvete_tabs.dart';
import 'package:cardapio/widget/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final _pageControler = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _pageControler,
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 98, 60, 27),
            title: Text("Home", style: TextStyle(color: Colors.white)),
            iconTheme: IconThemeData(color: Colors.white),
            centerTitle: true,
          ),
          body: HomePageTabs(),
          backgroundColor: Color.fromARGB(255, 249, 241, 222),
          drawer: CustomDrawer(_pageControler),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 98, 60, 27),
            title: Text("Lanches", style: TextStyle(color: Colors.white)),
            iconTheme: IconThemeData(color: Colors.white),
            centerTitle: true,
          ),
          body: LanchesTabs(),
          backgroundColor: Color.fromARGB(255, 249, 241, 222),
          drawer: CustomDrawer(_pageControler),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 98, 60, 27),
            title: Text("Sorvetes", style: TextStyle(color: Colors.white)),
            iconTheme: IconThemeData(color: Colors.white),
            centerTitle: true,
          ),
          body: SorveteTabs(),
          backgroundColor: Color.fromARGB(255, 249, 241, 222),
          drawer: CustomDrawer(_pageControler),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 98, 60, 27),
            title: Text("Pizzas", style: TextStyle(color: Colors.white)),
            iconTheme: IconThemeData(color: Colors.white),
            centerTitle: true,
          ),
          body: PizzaTabs(),
          backgroundColor: Color.fromARGB(255, 249, 241, 222),
          drawer: CustomDrawer(_pageControler),
        )
      ],
    );
  }
}
