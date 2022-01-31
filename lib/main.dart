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
          width: 100,
          height: 100,
          color: Colors.grey,
          
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(accountName: Text("Anonymous User"),
             accountEmail: Text("Anonymous@gmail.com"),
             currentAccountPicture:CircleAvatar(backgroundImage: NetworkImage("") ),
             ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Anonymous User"),
              trailing: Icon(Icons.edit),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.money ),
              title: Text("Account Balance"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.mail_outline ),
              title: Text("Fund Account"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text("Request Withdrawal"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Anonymous User"),
              subtitle: Text("anonymous@gmail.com"),
              trailing: Icon(Icons.h_mobiledata),
              onTap: (){},
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: null,
      child: Icon(Icons.edit),


      ),
    );
  }
}