import 'package:cardapio/pages/home_page.dart';
import 'package:cardapio/pages/reset_page.dart';
import 'package:cardapio/pages/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

//link para atribuir <a href="https://br.freepik.com/fotos-vetores-gratis/logotipo">Logotipo vetor criado por freepik - br.freepik.com</a>
//<div>Icons made by <a href="https://www.flaticon.com/authors/pixel-buddha" title="Pixel Buddha">Pixel Buddha</a> from <a href="https://www.flaticon.com/"             title="Flaticon">www.flaticon.com</a></div>
//<div>Icons made by <a href="https://www.flaticon.com/authors/inipagistudio" title="inipagistudio">inipagistudio</a> from <a href="https://www.flaticon.com/"             title="Flaticon">www.flaticon.com</a></div>
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _email = TextEditingController();
    final _senha = TextEditingController();

    Future<String> _signUp() async {
      final email = _email.text;
      final password = _senha.text;
      final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
      final result = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result;
     
      if(user.uid != null)
        return Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
      return user.uid;
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 241, 222),
      body: Container(
          padding: EdgeInsets.only(top: 60.0, left: 40.0, right: 40),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 200,
                width: 190,
                child: Image.asset("assets/logo.jpg"),
              ),
              SizedBox(
                height: 30.0,
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
              SizedBox(
                height: 10.0,
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
                        fontSize: 20.0)),
                style: TextStyle(fontSize: 20.0),
              ),
              Container(
                height: 40.0,
                alignment: Alignment.centerRight,
                child: FlatButton(
                  child: Text(
                    "Recuperar Senha",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Color.fromARGB(255, 98, 60, 27)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetPassword()));
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 50.0,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 98, 60, 27),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                        Container(
                          child: SizedBox(
                            height: 40.0,
                            width: 40.0,
                            child: Image.asset(
                              "assets/login.png",
                            ),
                          ),
                        )
                      ],
                    ),
                    onPressed: _signUp,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 50.0,
                decoration: new BoxDecoration(
                    color: Color.fromARGB(255, 59, 89, 153),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Entrar com Facebook",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                            textAlign: TextAlign.right),
                        Container(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: Image.asset("assets/face.png"),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  child: FlatButton(
                child: Text(
                  "Cadastre-se",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 98, 60, 27)),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                },
              ))
            ],
          )),
    );
  }

  //Metodos de Login

}
