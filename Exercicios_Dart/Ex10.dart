/* 10. A partir dos valores da aceleração (a em m/s2), da velocidade inicial (v0 em m/s)
 * e do tempo de percurso (t em s). Calcular e exibir a velocidade final de automóvel em km/h.
 * Exibir mensagem de acordo com a tabela 
 * Fórmula para o cálculo da velocidade em m/s: V = v0 + a. t
*/

import 'dart:math';

void main() {
  
  double aceleracao = 10;
  double velInicial = 10;
  double tempo = 3;

  var ms = velInicial + (aceleracao + tempo);
  var kmh = ms * 3.6;
  var kmhFormat = kmh.toStringAsFixed(2);


      print ("$kmhFormat Km/h");

      if(kmh <= 40) return print("Veículo muito lento.");
      if(kmh <= 60) return print("Velocidade permitida.");
      if(kmh <= 80) return print("Velocidade cruzeiro.");
      if(kmh <= 120) return print("Veículo rapido.");
      if(kmh > 120) return print("Veículo muito rapido.");
    }