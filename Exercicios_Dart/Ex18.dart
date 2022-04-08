import 'dart:io';

/*
18. Armazenar vinte valores em um vetor. 
Após a digitação, entrar com uma constante
multiplicativa que deverá
multiplicar cada um dos valores do vetor e 
armazenar o resultado no próprio vetor,
na respectiva posição.
 */

void main() {
  final vet = [10,
    20,
    30,
    40,
    50,
    60,
    70,
    80,
    90,
    100,
    110,
    120,
    130,
    140,
    150,
    160,
    170,
    180,
    190,
    200];
  const mult = 2;

  print("Valores do vetor com 20 elementos $vet");

  for (int i = 0; i < vet.length; i++) {
    vet[i] = vet[i] * mult;
  }

  print("Valores após multiplicar por $mult = $vet ");
}
