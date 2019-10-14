import 'package:cardapio/pages/login_page.dart';
import 'package:cardapio/pages/splash_scree.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromARGB(255, 248, 153, 74)
      ),
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
