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
      body: Container(
        width: 700,
        color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
         padding: const EdgeInsets.all(8),
   
         width: 100,
         height: 100,
         alignment: Alignment.center,
         color:  Colors.pink,
         
         
        ),
        Container(
         padding: const EdgeInsets.all(8),
   
         width: 100,
         height: 100,
         alignment: Alignment.center,
         color:  Colors.green,
         
         
        ),
        Container(
         padding: const EdgeInsets.all(8),
   
         width: 100,
         height: 100,
         alignment: Alignment.center,
         color:  Colors.purple,
         
         
        ),
          ],
        ),
      ),
    );
  }
}