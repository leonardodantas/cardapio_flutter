import 'package:flutter/material.dart';

class DrawerTiler extends StatelessWidget{
  //criação da classe que contera os elementos do menu em formato de lista
  final IconData icon;
  final String text;
  final PageController pageController;
  final int page;

  DrawerTiler(this.icon,this.text, this.pageController,this.page);

  @override 
  Widget build(BuildContext context){
    //uso do componente material
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.of(context).pop();
          pageController.jumpToPage(page);
        },
        //container onde ficara a linha
        child: Container(
          height: 50.0,
          padding: EdgeInsets.only(left: 50.0),
          //a linha tera um icone, o sizeBox para dar um espaço e o text
          child: Row(
            children: <Widget>[
             
              Text(text, style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: pageController.page.round() == page ?
                Theme.of(context).primaryColor : Colors.grey[700]
              ),)
            ],
          ),
        ),
      ),
    );
  }
}