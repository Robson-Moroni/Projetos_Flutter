/* 11. Entrar via teclado com um valor qualquer. Após a digitação, exibir a
 * tabuada do valor solicitado, no intervalo de um a dez.
*/


void main() {
  
  double valor = 4;
  
  print('Tabuada do $valor:');
  
  for (int i = 1; i <= 10; i++) {
      print('$i x $valor = ${i * valor}');
  }
  
}