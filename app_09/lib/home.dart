import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: _corpo(),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Vagas de Emprego "),
      centerTitle: true,
      backgroundColor: Colors.deepPurple,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _textoTitulo('Deslize para baixo para visualizar'),
            _carrosel(),
          ],
        ),
      ),
    );
  }

  _carrosel() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
      height: 600,
      child: ListView(
        children: <Widget>[
          _foto('ibm.jpg'),
          _textoTituloVaga('Analista Desenvolvedor Pleno'),
          _textoSalario(' 6000,00'),
          _textoDescricaoVaga(
              'Analista com conhecimento em desenvolvimento full-stack'),
          _foto('google.png'),
          _textoTituloVaga('Estagiario'),
          _textoSalario(' 2000,00'),
          _textoDescricaoVaga(
              'Vagas para Aprendizado e treinamento em desenvolvimento web, com java'),
          _foto('meta.jpg'),
          _textoTituloVaga('Analista Dart Sr'),
          _textoSalario(' 19000,00'),
          _textoDescricaoVaga(
              'Vagas para programador dart com experiencia de 3-4 anos'),
        ],
      ),
    );
  }

  _foto(String nomeFoto) {
    return Image.asset(
      "assets/images/$nomeFoto",
      height: 250,
      fit: BoxFit.cover,
    );
  }

  _textoTituloVaga(String texto) {
    return Text(
      '$texto',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.deepPurpleAccent,
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _textoDescricaoVaga(String texto) {
    return Text(
      "$texto",
      textAlign: TextAlign.justify,
      style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          //fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          //decorationColor: Colors.greenAccent,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }

  _textoSalario(String salario) {
    return Text('Salário:R\$$salario',
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
        ));
  }

  _textoTitulo(String texto) {
    return Text(
      "$texto",
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.greenAccent,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }
}
