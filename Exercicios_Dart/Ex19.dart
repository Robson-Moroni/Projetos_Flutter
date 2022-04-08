import 'dart:io';

/*
19. Armazenar o nome e idade de 5 pessoas.
Exibir os dados (nome e idade) de todas as pessoas.
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

  Pessoas p1 = Pessoas("gabriel", 15);
  Pessoas p2 = Pessoas("jose", 13);
  Pessoas p3 = Pessoas("rubens", 25);
  Pessoas p4 = Pessoas("pedro", 20);
  Pessoas p5 = Pessoas("carlos", 14);

  final vet = [p1, p2, p3, p4, p5];

  for (Pessoas p in vet) {
      print(p.dados());

  }
}
