import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 249, 241, 222),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color.fromARGB(255, 98, 60, 27),
          onPressed:()=> Navigator.pop(context),
          
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top:50.0,right: 40.0,left: 40.0),
        color:  Color.fromARGB(255, 249, 241, 222),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200.0,
              height: 200.0,
              child: Image.asset("assets/senha.png"),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Esqueceu sua senha?", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 98, 60, 27)),textAlign: TextAlign.center),
            SizedBox(
              height: 10.0,
            ),
            Text("Por favor, informe o E-mail associado a sua conta que enviaremos um link para o mesmo com as instruções de restauração de sua senha",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(fontWeight: FontWeight.w400,fontSize:20.0,color: Colors.black38)
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 98, 60, 27),
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
              child: FlatButton(
                child: Text("Enviar", textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.white)) ,
                onPressed: (){

                },
              )
            )

          ],
        ),
      ),
    );
  }
}