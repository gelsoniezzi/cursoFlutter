// Exception

/**
 * O exception é uma estratégia que, caso não haja uma solução viável em uma função, ao invés
 * de retornar um valor, a função dispara uma exceção, que recebe como padrão uma string.
 * 
 * Existe diferença entre Error e Exception
 */

class NotaForadoPadrao implements Exception {
  final String? msg;
  const NotaForadoPadrao(this.msg);
  
  String toString() => 'NotaForadoPadraoException: $msg';  
}

String resultado(double n1, double n2, double n3){

  var resultado = (n1+n2+n3)/ 3;

  if(resultado >= 7.0 && resultado <= 10.0){
    return "Aluno aprovado";
  } else if( resultado < 7 && resultado >=5){
    return "Aluno em recuperação";
  }else if(resultado < 5 && resultado >= 0){
    return "Aluno reprovado.";
  }else{
    throw NotaForadoPadrao("A nota deve estar no intervalo [0,10]. Nota: $resultado");
  }

}

void main(){

  List<double> notasAlunoR = [10.0, 7.5, 3]; // notas recuperação
  List<double> notasAlunoA = [10, 7.5, 6]; // notas aprovado
  List<double> notasAlunoE = [-10, -7.5, 6]; // Notas erradas
  DateTime hora;


  // Estrutura try catch:
  try{ // aluno em recuperação
    print(resultado(notasAlunoR[0],notasAlunoR[1],notasAlunoR[2]));
  } catch (e) {
    print(e);
  }

  // Erro não tratado: Unhandled exception: Exception: Notas fora do padrão
  // print(resultado(notasAlunoE[0],notasAlunoE[1],notasAlunoE[2]));

  //Erro tratado com estrutura try catch

  try{
    print(resultado(notasAlunoE[0],notasAlunoE[1],notasAlunoE[2]));
  }catch(e) {
    print(e); // Parâmetro repassado pela exceção
  }

}

