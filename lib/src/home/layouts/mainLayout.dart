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
        title: Text('Aqui vagas pra vocês profissionais',),
        centerTitle: true,
        titleSpacing: 50.0,
        leading: Text('Vagas Pets',style: TextStyle(fontSize: 20),),
      ),
      body: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(

            children: <Widget>[
              Container(width: MediaQuery.of(context).size.width/4.0,
              height: MediaQuery.of(context).size.height/1.1,
              color: Colors.grey,
              )
            ],
          ),
            Container(
              padding: EdgeInsets.all(50),
              width:  MediaQuery.of(context).size.width/1.5,
              child: ListView(
              children: <Widget>[
                Container(
                  color: Colors.yellowAccent,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.yellowAccent,
                  width: 50,
                  height: 50,
                ),
                
                Container(
                  color: Colors.yellowAccent,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.yellowAccent,
                  width: 50,
                  height: 50,
                )
              ],
            ),
            )
            
            ],
          )
        ],
      ),
    );
  }
}