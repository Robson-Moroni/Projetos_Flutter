/* 14. Exibir os vinte primeiros valores da série de Bergamaschi. A série: 1, 1, 1, 3, 5, 9, 17, ...
*/
  
       
void main() {

int primeiro = 1;
int segundo = 1;
int terceiro = 1;
int soma;

  for (int i = 1; i <= 20; i++) {
      
      if (i <= 3) {
        print(primeiro);
      
      } else {
        
        soma = primeiro + segundo + terceiro;
      
        print(soma);
      
        primeiro = segundo;
        segundo = terceiro;
        terceiro = soma;
      }
  }
}
