import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();
  TextEditingController n3Controller = TextEditingController();

  String infoResultado = "Informe seus dados!";
  String infoImc = "";

  void _calcularComb() {
    setState(() {
      double peso = double.parse(n1Controller.text);
      double altura = double.parse(n2Controller.text);

      double imc = peso / (altura * altura);
      var imcFormat = imc.toStringAsFixed(2);

      if (imc < 18.50) {
        infoResultado = ('Abaixo do Peso.');
        infoImc = ("O seu IMC é $imcFormat");
      } else if (imc <= 24.9) {
        infoResultado = ('Peso Normal.');
        infoImc = ("O seu IMC é $imcFormat");
      } else if (imc <= 29.9) {
        infoResultado = ('Sobrepeso.');
        infoImc = ("O seu IMC é $imcFormat");
      } else if (imc <= 34.9) {
        infoResultado = ('Obesidade Grau I.');
        infoImc = ("O seu IMC é $imcFormat");
      } else if (imc <= 39.9) {
        infoResultado = ('Obesidade Grau II.');
        infoImc = ("O seu IMC é $imcFormat");
      } else {
        infoResultado = ('Obesidade Grau III ou Morbida.');
        infoImc = ("O seu IMC é $imcFormat");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Cálculo de IMC"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 1, 65, 97),
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _foto(),
          _campo("Peso", n1Controller),
          _campo("Altura", n2Controller),
          _botao(),
          _texto(infoResultado),
          _texto(infoImc),
        ],
      ),
    );
  }

  _foto() {
    return Center(
      child: Image.network(
        'https://png.pngtree.com/png-clipart/20191122/original/pngtree-floor-scales-icon-simple-style-png-image_5182107.jpg',
        height: 150,
        width: 150,
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.black)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 25.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularComb,
          child: Text("Verificar",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.blueGrey,
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 25.0),
    );
  }
}
