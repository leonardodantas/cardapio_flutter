import 'package:cardapio/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  final _usuario = TextEditingController();
  final _email = TextEditingController();
  final _senha = TextEditingController();

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
              controller: _usuario,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20.0),
              ),
              style: TextStyle(fontSize: 20.0),
            ),
            TextFormField(
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20.0),
              ),
              style: TextStyle(fontSize: 20.0),
            ),
            TextFormField(
              controller: _senha,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20.0),
              ),
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              onPressed: () async {
                final FirebaseAuth fireAuth = FirebaseAuth.instance;
                final result = await fireAuth.createUserWithEmailAndPassword(
                    email: _email.text, password: _senha.text);
                if (result.email != null) {
                  _usuario.text = "";
                  _email.text = "";
                  _senha.text = "";
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }
                return result.email;
              },
              child: Container(
                child: Text(
                  "Cadastrar",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 98, 60, 27),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                alignment: Alignment.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
