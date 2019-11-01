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
      
    );
  }
}