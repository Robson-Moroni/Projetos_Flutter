import 'dart:io';

/*
19. Armazenar o nome e idade de 5 pessoas.
Após a digitação, exibir os dados (nome e idade) de todas as pessoas.
*/

class Pessoas {
  String nome;
  int idade;
  Pessoas(this.nome, this.idade);

  String dados() {
    return "Nome - $nome || Idade - $idade anos";
  }
}

void main() {
  Pessoas p1 = Pessoas("Fabio", 30);
  Pessoas p2 = Pessoas("Fabio", 30);
  Pessoas p3 = Pessoas("Fabio", 30);
  Pessoas p4 = Pessoas("Fabio", 30);
  Pessoas p5 = Pessoas("Fabio", 30);

  var vet = [p1, p2, p3, p4, p5];

  for (Pessoas p in vet) {
    print(p.dados());
  }
}
