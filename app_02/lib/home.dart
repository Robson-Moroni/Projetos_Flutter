import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Color.fromARGB(255, 169, 161, 161),
      body: _corpo(),
    );
  }

  int resultado = 0;

  void _calcularIncremento(String operacao) {
    setState(() {
      if (operacao == '+') {
        resultado += 1;
      }
      if (operacao == '-' && resultado > 0) {
        resultado -= 1;
      }
    });
  }

  _titulo() {
    return AppBar(
      title: Text("Contador de Pessoas"),
      centerTitle: true,
      backgroundColor: Colors.black,
    );
  }

  _corpo() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _mostrarNumero(resultado),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_botao('-'), _botao('+')],
          ),
        ],
      ),
    );
  }

  _botao(String operacao) {
    return RaisedButton(
      color: operacao == '-' ? Colors.red : Colors.green,
      onPressed: () {
        _calcularIncremento(operacao);
      },
      child: Text(
        operacao,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }

  _mostrarNumero(numero) {
    return Text(
      numero.toString(),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 60.0),
    );
  }
}
