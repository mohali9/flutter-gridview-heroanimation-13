import 'package:flutter/material.dart';

class BagianIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: new Row(
        children: <Widget>[
          new Iconteks(icon:Icons.call, text:"Panggil",),
          new Iconteks(icon:Icons.message, text:"Pesan",),
          new Iconteks(icon:Icons.photo, text:"Foto",),
        ],
      ),
    );
  }
}

class Iconteks extends StatelessWidget {
  // variabel
  Iconteks({this.icon, this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: new Column(
        children: <Widget>[
          new Icon(
            icon,
            size: 30.0,
            color: Colors.blue,
          ),
          new Text(text)
        ],
      ),
    );
  }
}
