import 'package:flutter/material.dart';
import 'package:unicorndial/unicorndial.dart';

void main() =>
    runApp(new MaterialApp(debugShowCheckedModeBanner: false, home: Example()));

class Example extends StatefulWidget {
  _Example createState() => _Example();
}

class _Example extends State<Example> {
  @override
  Widget build(BuildContext context) {
    var childButtons = List<UnicornButton>();

    childButtons.add(UnicornButton(
        hasLabel: true,
        labelText: "Account",
        currentButton: FloatingActionButton(
          backgroundColor: Colors.redAccent,
          mini: true,
          child: Icon(Icons.person),
          onPressed: () {},
        )));

    childButtons.add(UnicornButton(
        labelText: "Favourites",
        hasLabel: true,

        currentButton: FloatingActionButton(

            backgroundColor: Colors.greenAccent,
            mini: true,
            child: Icon(Icons.star))));

    childButtons.add(UnicornButton(
        labelText: "Categories",
        hasLabel: true,

        currentButton: FloatingActionButton(
            heroTag: "directions",
            backgroundColor: Colors.blueAccent,
            mini: true,
            child: Icon(Icons.category_outlined))));

    return Scaffold(
        floatingActionButton: UnicornDialer(
            backgroundColor: Color.fromRGBO(255, 255, 255, 0.6),
            parentButtonBackground: Colors.indigoAccent,
            orientation: UnicornOrientation.VERTICAL,
            parentButton: Icon(Icons.add),
            childButtons: childButtons),
        appBar: AppBar(
          title: Text("Awesome Floating button"),
          centerTitle: true,
          backgroundColor: Colors.indigoAccent,
        ),
        body: Center(child: RaisedButton(
          child: Text("Bounce"),
          onPressed: () {
            setState(() {});
          },
        )));
  }
}
