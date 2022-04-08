/* 4. Entrar via teclado com o valor da cotação do dólar e uma certa quantidade
* de dólares. Calcular e exibir o valor correspondente em Reais (R$).
*/

void main() {
  double cotacao = 5.06;
  double dolar = 150;

  double reais = double.parse((dolar * cotacao).toStringAsFixed(2));

  print(" $dolar USD equivale a $reais BRL");
}
