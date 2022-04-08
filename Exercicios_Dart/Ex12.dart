/* 12. Entrar via teclado com um valor (X) qualquer. Digitar o intervalo que o programa que
 * deverá calcular a tabuada do valor X digitado, sendo que o segundo valor (B), deverá ser
 * maior que o primeiro (A). Exibir a tabuada do valor digitado, no intervalo decrescente,
 * ou seja, a tabuada de X no intervalo de B para A.
*/


void main() {
  
  int x = 7;
  int a = 5;
  int b = 6;
  
  
  if(a>b)return print ("O Número B deve ser maior que A");
  
  if (b>a){
      print('Tabuada do $x, entre $a até $b:');
  
      for (b; b >= a; b--) {
        print('$x x $b = ${x * b}');
      }
    
  }
  
}