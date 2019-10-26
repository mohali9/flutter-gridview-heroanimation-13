import 'package:flutter/material.dart';
import './detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List HP',
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
// Di masukan dalam list
  List<Container> daftarhp = new List();

// Simpan dalam array
  var handphone = [
    {"nama": "Asus", "gambar": "asus-rog.jpg"},
    {"nama": "Google", "gambar": "google-pixel.png"},
    {"nama": "Iphone", "gambar": "iphone-x.png"},
    {"nama": "Oppo", "gambar": "oppo.png"},
    {"nama": "Realme", "gambar": "realme.png"},
    {"nama": "Reazer", "gambar": "reazer.png"},
    {"nama": "Redmi", "gambar": "redmi.png"},
    {"nama": "Samsung", "gambar": "samsung.png"},
    {"nama": "Xperia", "gambar": "sony-xperia.png"},
    {"nama": "Windows", "gambar": "windows-phone.png"},
    {"nama": "Xiaomi", "gambar": "xiaomi.jpg"},
  ];

// Perulangan data array diatas
  _buatlist() async {
    for (var i = 0; i < handphone.length; i++) {
      // buat lagi dua variabel final untuk panggil
      final telephone1 = handphone[i];
      final String gambar1 = telephone1["gambar"];

      daftarhp.add(new Container(
        padding: new EdgeInsets.all(05.0),
        child: new Card(
          child: new Column(
            children: <Widget>[
              // Buat Animasi
              new Hero(
                tag: telephone1['nama'],
                child: new Material(
                  child: new InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => new Detail(
                        nama: telephone1['nama'],
                        gambar2: gambar1,
                      ),
                    )),
                    child: new Image.asset(
                      "img/$gambar1",
                      fit: BoxFit.cover,
                      height: 150.0,
                    ),
                  ),
                ),
              ),

              new Padding(
                padding: EdgeInsets.all(02.0),
              ),
              new Text(
                telephone1["nama"],
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    _buatlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Center(
          child: Text('List Smartphone 2019'),
        ),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        // masuk di list
        children: daftarhp,
      ),
    );
  }
}
