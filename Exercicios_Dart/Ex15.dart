import 'dart:io';

/*
17. Armazenar dez valores na memória do computador.
Após a digitação dos valores, criar uma rotina para
ler os valores e achar e exibir o maior deles.
*/

void main() {
  final vet = [30, 20, 80, 50, 90, 70, 40, 10, 75, 1];
  int maior = vet[0];

  for (int i = 0; i < vet.length; i++) {
    if (vet[i] > maior) {
      maior = vet[i];
    }
  }
  print("O maior valor é $maior.");
}
