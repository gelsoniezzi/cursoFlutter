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

  // agora vamos imprimir um warning (que era amarelo) de cor branco, é possível?
  logger.ansiCores = {logger.Cores.amarelo: '\x1b[37m'};

  logger.warning('Atenção, agora sou da cor branco.');
  


// ------------------------------------------------
// variáveis públicas e privadas

  print('logger.numero: ${logger.numero}');

  logger.numero = 99;

  print('logger.numero após modificação ${logger.numero}'); // A modificação ocorre pois a variavel numero é publica

  //print('${logger._numeroPrivado}'); // nome indefinido

  
  
  

}