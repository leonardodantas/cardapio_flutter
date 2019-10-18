import 'package:flutter/material.dart';

class CardItem extends StatelessWidget{

  String produto;
  String ingredientes;
  String valor;
  String imagem;

  CardItem(this.produto, this.ingredientes, this.valor, this.imagem);

  @override 
  Widget build(BuildContext context){
    return 
  Container(
    padding: EdgeInsets.only(top:10.0,bottom: 10.0),
    child:  Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          title: Text(produto,style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 248, 153, 74)),textAlign: TextAlign.left),
          
        ),
        Container(
          padding: EdgeInsets.only(top:10.0, bottom: 10.0),
          child: Image.network(imagem),
        ),
       
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(ingredientes,
          style: TextStyle(fontSize: 15.0),),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 35.0, top: 10.0,bottom: 20.0),
              child: Text("R\$ "+valor, style: TextStyle(fontSize: 40.0,color: Colors.green),) ,
            )
            
          ],
        )
      ],
    )
  ),
  ); 
  }
  
}