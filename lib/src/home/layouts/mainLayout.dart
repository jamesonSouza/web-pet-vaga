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
body:   
  Row(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width/10,
        height: MediaQuery.of(context).size.height/5,
        color: Colors.white24,
        child: Text("Anuncio Esquerdo coluna"),),
      Column(
           
           mainAxisAlignment: MainAxisAlignment.start,
           children: <Widget>[
             Container(
               width: MediaQuery.of(context).size.width/1.3,
               height: MediaQuery.of(context).size.height/1.1,
               child:  ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              EntryItem(data[index]),
          itemCount: data.length,)
             )
              
          
           ],
    ),
     Container(
        width: MediaQuery.of(context).size.width/10,
        height: MediaQuery.of(context).size.height/5,
        color: Colors.white24,
        child: Text("Direito Esquerdo coluna"),),
    ],
  )
         
         );
        
       
        
      
    
  


 
      

  }
  
  }
  // One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'Empresa: JmsApplay comercial  Vaga: 5  expiração:30 dias',
    <Entry>[
      Entry(
        'Section A0',
        <Entry>[
          Entry('Descricao: Emrepsa'),
          Entry('Item A0.2'),
          Entry('Item A0.3'),
        ],
      ),
      Entry('Section A1'),
      Entry('Section A2'),
    ],
  ),
  Entry(
    'Chapter B',
    <Entry>[
      Entry('Section B0'),
      Entry('Section B1'),
    ],
  ),
  Entry(
    'Chapter C',
    <Entry>[
      Entry('Section C0'),
      Entry('Section C1'),
      Entry(
        'Section C2',
        <Entry>[
          Entry('Item C2.0'),
          Entry('Item C2.1'),
          Entry('Item C2.2'),
          Entry('Item C2.3'),
        ],
      ),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
