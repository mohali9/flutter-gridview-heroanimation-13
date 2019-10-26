import 'package:flutter/material.dart';
import './bagiannama.dart';
import './bagianicon.dart';
import './bagianketerangan.dart';

class Detail extends StatelessWidget {
  // buat dua variabel
  Detail({this.nama, this.gambar2});
  final String nama;
  final String gambar2;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.all(10.0),
          ),
          new Container(
            height: 240.0,
            child: new Hero(
              tag: nama,
              child: new Material(
                child: new InkWell(
                  child: new Image.asset("img/$gambar2"),
                ),
              ),
            ),
          ),
          new BagianNama(
            nama: nama,
          ),
          new BagianIcon(),
          new BagianKeterangan(),
        ],
      ),
    );
  }
}
