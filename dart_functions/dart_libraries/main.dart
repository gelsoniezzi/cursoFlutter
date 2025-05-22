import 'log/log.dart' as logger; // show error; // - importa somente a função error
import 'dart:io';

class Carro{
  String nome;
  int ano;

  Carro({required this.nome, required this.ano});
    // TODO: implement Carro

  @override
  String toString(){
    return 'Carro $nome, ano $ano';
  }
}
main() {

  Carro carro1 = new Carro(nome: 'Celta', ano: 50);

  logger.error('Este é um erro.');
  logger.warning('Atenção');
  logger.info(carro1);
}