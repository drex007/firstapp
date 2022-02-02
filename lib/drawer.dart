import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
      );
  }
}