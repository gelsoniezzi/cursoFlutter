import 'package:classificacao/utils/modalidade.dart';

class Candidato {

  String nome;
  double notaGeral;
  List<Mod> modalidades; // modalidades de concorrência que o candidato concorre
  bool foiClassificado;
  DateTime dataClassificacao;
  bool ausente;

  Candidato({required this.nome, required notaGeral, });
}