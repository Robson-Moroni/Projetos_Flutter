import 'dart:io';

/*
20. Armazenar o nome, sexo e idade de 5 pessoas. As entradas devem ser apenas “F” ou “M” para o sexo
e valores positivos para a idade. Após a digitação dos dados, exibir os dados (nome, sexo e idade)
de todas as pessoas do sexo feminino.
*/

class Pessoas {
  String nome;
  String sexo;
  int idade;
  Pessoas(this.nome, this.sexo, this.idade);

  String dados() {
    return "Nome - $nome || Sexo - $sexo || Idade - $idade anos";
  }
}

void main() {
  Pessoas p1 = Pessoas("Paulo", "M", 35);
  Pessoas p2 = Pessoas("Roberta", "F", 40);
  Pessoas p3 = Pessoas("Carlos", "M", 25);
  Pessoas p4 = Pessoas("Eduardo", "M", 20);
  Pessoas p5 = Pessoas("Fabio", "M", 30);

  var vet = [p1, p2, p3, p4, p5];

  for (Pessoas p in vet) {
    if (p.sexo == 'F') {
      print(p.dados());
    }
  }
}

