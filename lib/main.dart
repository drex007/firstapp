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
        title: Text("FirstApp"),
      ),
      body: Container(
        child: Text("Hi buddy"),
      ),
    );
  }
}