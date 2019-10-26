import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Center(
          child: Text('Grid View'),
        ),
      ),
      body: new GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.all(10),
            child: const Text('Satu 1'),
            color: Colors.teal[100],
          ),
          new Container(
            padding: const EdgeInsets.all(10),
            child: const Text('Dua 2'),
            color: Colors.orange[100],
          ),
          new Container(
            padding: const EdgeInsets.all(10),
            child: const Text('Tiga 3'),
            color: Colors.green[100],
          ),
          new Container(
            padding: const EdgeInsets.all(10),
            child: const Text('Empat 4'),
            color: Colors.blue[100],
          ),
          new Container(
            padding: const EdgeInsets.all(10),
            child: const Text('Lima 5'),
            color: Colors.grey[300],
          ),
          new Container(
            padding: const EdgeInsets.all(10),
            child: const Text('Enam 6'),
            color: Colors.red[100],
          ),
          new Container(
            padding: const EdgeInsets.all(10),
            child: const Text('Tujuh 7'),
            color: Colors.yellow[100],
          ),
          new Container(
            padding: const EdgeInsets.all(10),
            child: const Text('Delapan 8'),
            color: Colors.brown[100],
          ),
        ],
      ),
    );
  }
}