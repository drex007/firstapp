import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.myText,
    required TextEditingController newcontroller,
  }) : _newcontroller = newcontroller, super(key: key);

  final String myText;
  final TextEditingController _newcontroller;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}