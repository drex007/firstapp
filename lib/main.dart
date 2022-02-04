import 'package:firstapp/drawer.dart';
import 'package:firstapp/pages/login_page.dart';
import 'package:flutter/material.dart';

import 'cardwidget.dart';
import 'home.dart';
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: sharedpref !=null ? Homepage(): LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      routes: {
        LoginPage.routeName : (context) => LoginPage(),
        Homepage.routeName : (context) => Homepage(),

      },

    );

  }
}

