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


class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var myText = "Change Your name" ;
  TextEditingController _newcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("TrevInvest"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: [
                  Image.asset("assets/codin.jpg"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(myText,
                   style: TextStyle(
                    fontSize: 25, 
                    fontWeight: FontWeight.bold,
          
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _newcontroller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        
                        labelText: "Name",
                        hintText: "Enter Name"
                      ),
                    ),
                  ),
          
                ],
              ),
            ),
          ),
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
      floatingActionButton: FloatingActionButton(onPressed: () {
        myText = _newcontroller.text;
        setState(() {
          
        });
      },
      child: Icon(Icons.send),


      ),
    );
  }
}