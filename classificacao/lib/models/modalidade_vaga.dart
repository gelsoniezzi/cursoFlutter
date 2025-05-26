import 'package:classificacao/models/candidato.dart';
import 'package:classificacao/utils/modalidade.dart';

class ModalidadeVaga {
  Mod modalidade;
  int nVagasTotais; // talvez nao seja necessário - mas diminui o trabalho
  int nVagasPreenchidas;
  double fracaoTotal; // fracao do total de vagas
  String? listaDocumentos;


  ModalidadeVaga({required this.modalidade, required this.nVagasTotais, this.nVagasPreenchidas = 0,required this.fracaoTotal  });

  getNumeroCandidatos(){
    // retornar quantidade de candidatos
  }

}