/* 9. Entrar com o peso, o sexo e a altura de uma determinada 
 * pessoa. Após a digitação, exibir se esta pessoa está ou não 
 * com seu peso ideal. Fórmula: peso/altura²
*/

import 'dart:math';

void main() {
  
  String sexo = "M";
  double peso = 120;
  double altura = 1.75;
  
  double imc = peso / pow(altura,2);
  
    if (sexo == "M"){
      if( imc < 20) return print("Abaixo do peso");
      if((imc >= 20) && (imc < 25)) return print("Peso Ideal");
      if( imc >= 25) return print("Acima do peso");
    }
  
    if (sexo == "F"){
      if( imc < 19) return print("Abaixo do peso");
      if((imc >= 19) && (imc < 24)) return print("Peso Ideal");
      if( imc >= 24) return print("Acima do peso");
    }
  
  
  }