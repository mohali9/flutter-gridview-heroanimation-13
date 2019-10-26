import 'package:flutter/material.dart';

class BagianNama extends StatelessWidget {
  // buat dua variabel
  BagianNama({this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          // expanded buat rata kanan rata kiri
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  nama,
                  style: new TextStyle(fontSize: 20.0),
                ),
                new Text(
                  "$nama@gmail.com",
                  style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                )
              ],
            ),
          ),
          new Row(
            children: <Widget>[
              new Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              new Text("5", style: new TextStyle())
            ],
          ),
        ],
      ),
    );
  }
}
