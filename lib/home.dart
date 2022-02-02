// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// import 'cardwidget.dart';
import 'drawer.dart';


class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // var myText = "Change Your name" ;
  // TextEditingController _newcontroller = TextEditingController();
  var url ="https://jsonplaceholder.typicode.com/photos" ;
  var data;
  

  
  @override
  void initState(){
    super.initState();
    fetchData();
  }

  fetchData() async {
   var response = await http.get(Uri.parse(url));
   data = jsonDecode(response.body);
   setState(() { 
     
   });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("TrevInvest"),
      ),
      body: data != null ? ListView.builder(itemBuilder: (context, index){
        return ListTile(
          title: Text("Title: ${data[index]["title"]}", style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold,
          ),),
          subtitle: Text("ID: ${data[index]["id"]}"),
          leading: Image.network(data[index]["url"]),

        );

      })
      :  Center(
       child: CircularProgressIndicator(),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // myText = _newcontroller.text;
        setState(() {
          
        });
      },
      child: Icon(Icons.send),


      ),
    );
  }
}