import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


void main(){
  runApp(MaterialApp(
    title: "Awesome App Minimized",
    home:HomePage()
  ));
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Awesome App")),
      body: Container(color:Colors.teal,child: Center(child: Text("Body")),),


    );
  }
}