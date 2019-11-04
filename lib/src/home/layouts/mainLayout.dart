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
      
      body:  NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: Image.asset("images/logo.png"),
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              backgroundColor: Colors.green,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  
                  
                  background: Image.network(
                    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                    fit: BoxFit.cover,
                  ),
                  
                  ),actions: <Widget>[
FlatButton(
            child: Text("Menu",style: TextStyle(
              fontSize: 25

            ),),
            onPressed: (){},
            disabledColor: Colors.grey,
            color: Colors.red,
            
          ),
           FlatButton(
             
            child: Text("Sobre",style: TextStyle(
              fontSize: 25)),
            onPressed: (){},
          ),
           new FlatButton(
  child: new Text("Contato",style: TextStyle(
              fontSize: 25)),
  onPressed: (){},
  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
),
           FlatButton(
            child: Text("Anuncios",style: TextStyle(
              fontSize: 25)),
            onPressed: (){},
          )
                  ],
            ),
          ];
        },
        body: Center(
          child: Text("Sample Text"),
        ),
      ),
    );
  }
}