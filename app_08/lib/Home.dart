import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();

  String InfoResultado = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.blueGrey,
        body: _corpo(),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Catálogo"),
      centerTitle: true,
      backgroundColor: Colors.deepPurple,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.blueGrey.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _texto('Anuncios (deslize para navegar)'),
            _carrosel(),
          ],
        ),
      ),
    );
  }

  _carrosel() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
      height: 350,
      child: PageView(
        children: <Widget>[
          _foto('note3.jpg', 'MacBook Air 13” Apple M1 8GB RAM 256GB SSD'),
        ],
      ),
    );
  }

  _foto(String nomeFoto, String textoFoto) {
    return Container(
        child: Column(children: [
      Image.asset(
        "assets/images/$nomeFoto",
        height: 300,
        fit: BoxFit.cover,
      ),
      _textoDescricaoAnuncio(textoFoto)
    ]));
  }

  _texto(String texto) {
    return Text(
      "$texto",
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.greenAccent,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }

  _textoDescricaoAnuncio(String texto) {
    return Text(
      "$texto",
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          //decorationColor: Colors.greenAccent,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }
}
