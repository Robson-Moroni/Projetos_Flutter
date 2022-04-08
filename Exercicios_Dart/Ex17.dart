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
  Pessoas p1 = Pessoas("jarro", 21);
  Pessoas p2 = Pessoas("rubens", 26);
  Pessoas p3 = Pessoas("caue", 21);
  Pessoas p4 = Pessoas("pedro", 26);
  Pessoas p5 = Pessoas("matheus", 21);

  var vet = [p1, p2, p3, p4, p5];

  for (Pessoas p in vet) {
    print(p.dados());
  }
}
