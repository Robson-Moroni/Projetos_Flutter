import 'dart:io';

//16. Armazenar dez números na memória do computador. Exibir os valores na ordem inversa à da digitação.

void main() {
  final vet = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];

  for (int i = 1; i <= vet.length; i++) {
    print(vet[vet.length - i]);
  }
}
