
import 'package:firstapp/home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../home.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = "/login";
 

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();

  final _namecontroller = TextEditingController();

  final _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 150, 15, 50),
            child: Column(
              children: [
                TextFormField(
                  
                  controller: _namecontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Enter an email",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                 TextFormField(
                  controller: _passwordcontroller,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter password",
                  ),
                ),

                ElevatedButton(onPressed: (){
                  sharedpref(_namecontroller.text);
                
                  
                  // Navigator.push(context,
                  //  MaterialPageRoute(builder: (context) => Homepage())
                  
                  Navigator.pushReplacementNamed(context, Homepage.routeName);
                  
                   
                   
                
                },
                style: ButtonStyle(

                  ) ,
                
                child: Text("Log in")),
              ],
      
            ),
          ),
        ),
      ),
      
    );
  }
}

sharedpref(logindata) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("LoginData",logindata);
  prefs.getString("LoginData");
  
}