import 'dart:ui';

import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Homepage(),
    theme: ThemeData(
      primarySwatch: Colors.pink
    ),
  ));
}


class Homepage extends StatelessWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TrevInvest"),
      ),
      body: Center(
        child: Container(
         padding: const EdgeInsets.all(8),
   
         width: 350,
         height: 100,
         alignment: Alignment.center,
         decoration: BoxDecoration(
           color: Colors.pink,
           borderRadius: BorderRadius.circular(10),
           gradient: LinearGradient(colors: [
             Colors.pink,
             Colors.black,
           ]),
           
         ),
         child: Text("I am a box",
         textAlign: TextAlign.center,
         style: TextStyle(
           fontSize: 30,
           color: Colors.white,
           fontWeight: FontWeight.bold,
         )),
        ),
      ),
    );
  }
}