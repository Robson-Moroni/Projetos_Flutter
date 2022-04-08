import 'package:flutter/material.dart';

class WidgetHome extends StatelessWidget {
  const WidgetHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Color.fromARGB(255, 251, 253, 252),
      body: _body(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Meu Perfil"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 39, 100, 41),
    );
  }

  _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _textoNome(),
          _texto(),
        ],
      ),
    );
  }

  _textoNome() {
    return Text(
      "Fabio Santos\n",
      style: TextStyle(
        color: Colors.black,
        fontSize: 35,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  _texto() {
    return Text(
      "Experiências\n\n"
      "Analista/Desenvolvedor BI\n"
      "Orangefox\n\n"
      "Assessor Técnico\n"
      "Jucesp\n\n"
      "Formação\n\n"
      "Formação Administração - Unip\n"
      "Unip - 2008/2011\n\n"
      "Estudante de ADS\n"
      "Fatec-PG - 2020/2022\n",
      style: TextStyle(
        color: Color.fromARGB(255, 39, 100, 41),
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
