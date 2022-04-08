/*21. Criar um mini sistema bancário com as classes: Conta, Conta Corrente, Conta Poupança e Cliente.
Cada classe deve ter atributos específicos. No sistema devemos ter pelo menos 3 funcionalidades:
Saque, Depósito e Transferência.*/

import 'dart:io';


void main() {
  var conta1 = new ContaBancaria('Fulano', 1, 1000.00);
  var conta2 = new ContaBancaria('Fulaninha', 2, 7500.00);
  var conta3 = new ContaBancaria('Xis', 3, 1000.00);

  print(' Olá ' + conta1.nomeCliente.toString() + '!\n') ;

  while (true) {

    print(' Selecione uma operação que deseja realizar: '
        '\n\n 1) Saque \n 2) Depósito \n 3) Transferência \n 4) Consultar Saldo');

    var opcaoInput = stdin.readLineSync();
    var opcao = int.parse(opcaoInput!);

    switch (opcao) {
      case 1:
        print('Insira o valor que deseja sacar: ');
        var valorSacarInput = stdin.readLineSync();
        var valorSacar = double.parse(valorSacarInput!);
        print(conta1.Saque(valorSacar, conta1));
        break;

      case 2:
        print('Insira o valor que deseja depositar: ');
        var valorDepositarInput = stdin.readLineSync();
        var valorDepositar = double.parse(valorDepositarInput!);
        print(conta1.Deposito(valorDepositar, conta1));
        break;

      case 3:
        print('Digite o valor a transferir: ');
        var valorTransferirInput = stdin.readLineSync();
        var valorTransferir = double.parse(valorTransferirInput!);
        print('Informe o número da conta destino: ');
        var contaDestinoInput = stdin.readLineSync();
        var contaDestino = int.parse(contaDestinoInput!);
        print(conta1.transferencia(valorTransferir, conta1, conta2, conta3));
        break;

      case 4:
        print(conta1.Saldo(conta1));
        break;

    }
  }
}

class ContaBancaria  {
  String nomeCliente;
  int idConta;
  double saldo;

  ContaBancaria(this.nomeCliente, this.idConta, this.saldo);

  String transferencia(double valorTransferir, ContaBancaria contaOrigem,
      ContaBancaria contaDestino, ContaBancaria conta3) {
    if (contaOrigem.saldo > valorTransferir) {
      contaOrigem.saldo = contaOrigem.saldo - valorTransferir;
      contaDestino.saldo = contaDestino.saldo + valorTransferir;
      return 'Transferência realizada com sucesso para ' +
          contaDestino.nomeCliente.toString() +
          '! Seu saldo atual é  R\$' +
          contaOrigem.saldo.toString()  + '\n';
    } else {
      return 'Saldo insuficiente para realizar esta operação.\n'
          'Seu saldo é R\$'+ contaOrigem.saldo.toString()  + '\n';
    }
  }

  String Saque(double valorSacar, ContaBancaria contaOrigem) {
    if (contaOrigem.saldo > valorSacar) {
      contaOrigem.saldo = contaOrigem.saldo - valorSacar;
      return 'Aguarde a saída das cédulas. Seu novo saldo é R\$' +
          contaOrigem.saldo.toString()  + '\n';
    } else {
      {
        return 'Saldo insuficiente para realizar esta operação.\n'
            'Seu saldo é R\$'+ contaOrigem.saldo.toString()  + '\n';
      }
    }
  }

  String Deposito(double valorDepositar, ContaBancaria contaOrigem) {
    contaOrigem.saldo = contaOrigem.saldo + valorDepositar;
    return 'Depósito realizado com sucesso! Seu novo saldo é R\$' +
        contaOrigem.saldo.toString();
  }

  String Saldo(ContaBancaria conta)
  {
    return 'Seu saldo é R\$' + conta.saldo.toString() + '\n';
  }
}