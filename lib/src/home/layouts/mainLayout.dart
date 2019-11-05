import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      drawer: Drawer(
  child: ListView(
    children: <Widget>[
      ListTile(
        title: Text("Item: "),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        title: Text("Item 2"),
        trailing: Icon(Icons.arrow_forward),
      ),
    ],
  ),
),
body: Stack(
  children: <Widget>[
    Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            new Container(
              width: MediaQuery.of(context).size.width/1.2,
  height: MediaQuery.of(context).size.height/1.2,
  child: new ListView(
    scrollDirection: Axis.vertical,
    children: <Widget>[
      new RaisedButton(
        onPressed: null,
        child: new Text("vaga1"),
      ),
      new Padding(padding: new EdgeInsets.all(5.00)),
      new RaisedButton(
        onPressed: null,
        child: new Text("vaga2"),
      ),
      Container(
       child: Column(
         children: <Widget>[
           Text("teste")
           ,Text("teste")

         ],
       ),
        
      )
    ],
  ),
),

 
          ],
        )
      ],
    )]
),
);
  }
  
  }