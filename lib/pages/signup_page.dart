import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 249, 241, 222),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color.fromARGB(255, 98, 60, 27),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 249, 241, 222),
        padding: EdgeInsets.only(top: 60.0, left: 40.0, right: 40),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 190,
              height: 200,
              child: Image.asset("assets/logo.jpg"),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0
                ),
              ),
              style: TextStyle(fontSize: 20.0),
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0
                ),
              ),
              style: TextStyle(fontSize: 20.0),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0
                ),
              ),
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
               decoration: BoxDecoration(
                  color: Color.fromARGB(255, 98, 60, 27),
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
              alignment: Alignment.center,
              child: FlatButton(
                child: Text("Cadastrar", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.white),) ,
                onPressed: (){

                },
              ),
              
            )
          ],
        ),
      ),
    );
  }
}
