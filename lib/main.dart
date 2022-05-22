import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(title: "Awesome App Minimized", home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Awesome App")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            color: Colors.teal,
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width/1.3,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyContainer(),
                MyContainer(),
                MyContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
    "Hi Flutter",
    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
        ),
        height: 100,
        width: 100,
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
      color: Colors.teal,
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
            color: Colors.black38,
            blurRadius: 5,
            spreadRadius: 7,
            offset: Offset(2.0, 3.5))
      ],
      gradient: LinearGradient(
          colors: [Colors.red, Colors.yellow, Colors.pink])),
      );
  }
}
