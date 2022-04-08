/* 13. Exibir os trinta primeiros valores da série de Fibonacci. A série: 1, 1, 2, 3, 5, 8, ...
*/


void main() {
  
    int a = 1;
    int b = 0;
    int soma;
      
  for (int i = 1; i <= 30; i++) {
    print ('$a ');
    soma = a;
    a += b;
    b = soma;
    
  }
}