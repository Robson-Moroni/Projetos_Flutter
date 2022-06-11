import 'package:app_12/pages/Experiencia.dart';
import 'package:app_12/pages/Formacao.dart';
import 'package:flutter/material.dart';
import 'package:app_12/pages/Formacao.dart';
import 'package:app_12/pages/Experiencia.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;

  final telas = [
    Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _texto('Nome: Robson Moroni Pupo de Oliveira Andrade '),
        _texto('Telefone: (13) 974112845'),
      ],
    )),
    Formacao(),
    Experiencia(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: telas[_currentPage],
        drawer: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Robson Moroni'),
              accountEmail: Text('robson.moroni@hotmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/moroni.jpg'),
              ),
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Sobre'),
              subtitle: Text('Meu Perfil'),
              trailing: Icon(Icons.account_box_outlined),
              onTap: () {
                setState(() {
                  _currentPage = 0;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Formação'),
              subtitle: Text('Minha Formação acadêmica'),
              trailing: Icon(Icons.account_box_outlined),
              onTap: () {
                setState(() {
                  _currentPage = 1;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Experiência'),
              subtitle: Text('Minhas Experiências'),
              trailing: Icon(Icons.contact_mail_rounded),
              onTap: () {
                setState(() {
                  _currentPage = 2;
                });
              },
            ),
          ],
        )),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("App Meu Perfil"),
      centerTitle: true,
      backgroundColor: Colors.deepPurple,
    );
  }
}

_texto(String valor) {
  return Text(
    valor,
    style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        decorationStyle: TextDecorationStyle.wavy),
  );
}
