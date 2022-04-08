import 'package:app_07/components.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abertura de Conta',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const AberturaConta(title: 'Abertura de Conta'),
    );
  }
}

class AberturaConta extends StatefulWidget {
  const AberturaConta({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AberturaConta> createState() => _AberturaConta();
}

_nomeCompleto(){
  return const fields(labelName: 'Nome Completo');
}

_idade(){
  return const fields(labelName: 'Idade', textInputType: TextInputType.number);
}

String selectValor = "Masculino";
_sexo(){
  return DropdownButton<String>(
      value: selectValor,
      icon: const Icon(Icons.keyboard_arrow_down_rounded),
      isExpanded: true,
      underline: SizedBox(),
      style: const TextStyle(
          color: Colors.black,
        ),
      onChanged: (String? newValue){
         setState(() {
      selectValor = newValue!;
    });
  },
    items: <String>['Masculino', 'Feminino'].map<DropdownMenuItem<String>>((
    String value ) {
      return DropdownMenuItem(
      value: value,
      child: Text(value),
      );
  }).toList(),
  );
}

class _AberturaConta extends State<AberturaConta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Abertura de Conta"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                  _nomeCompleto(),
                  _idade(),
              ],
            ),
          ),
      )
    );
  }

  }



