/*
  Dart é uma linguagem verdadeiramente orientada a objetos, portanto, 
  até funções são objetos e têm um tipo, Function. Isso significa que 
  funções podem ser atribuídas a variáveis ​​ou passadas como argumentos 
  para outras funções. Você também pode chamar uma instância de uma classe 
  Dart como se fosse uma função.
*/
var escopoGlobal = 'global';
void main() {

  int i = 10;

  
  // função anônima 
  //int Function soma (int a, int b) = (x, y ) {return x + y};

  //print(soma(1,2));

  // calculo de fatorial
  // print(fatorial(7));
  
  // Exemplo do livro
  var escopoMain = 'escopoMain';
  a() {
    var escopoDentro = 'escopoA';
    print('a: $escopoGlobal - $escopoMain - $escopoDentro');
    b() {
      var escopoDentro = 'escopoB';
      print('b: $escopoGlobal - $escopoMain - $escopoDentro');
    }
    b();
  }
  c() {
    /* a() {
      var escopoA = 'escopoA';
      print('$escopoMain $escopoA  - ');
    }
    */
    var escopoDentro = 'escopoC';
    a();
  }
  c(); //Nada foi exibid pois a função a() não existe no escopo de c()

  print('main: $escopoGlobal - $escopoMain');

  /* Objeto Function - Em dart, uma função é um objeto do tipo Function, isso quer dizer
    que podemos guardar uma função em uma variável
  */

  //No exemplo 1, a função tem os tipos definidos, entretanto podemos definir uma função utilizando tipos dinâmicos

  //exemplo 1
  Function funcaoSubtracao = (int x, int y) {
    return x - y;
  };

  // Nesse e
  print(funcaoSubtracao(10, 2));

  Function funcaoSubtracaoDinamica = (x ,y) {
    return x - y;
  };

  print(funcaoSubtracaoDinamica(12.8,6.6)); // A saída tem um problema relacionado ao float: 6.200000000000001

  print(funcaoSubtracaoDinamica(12.8,6.6).runtimeType); // saída: double

  print(funcaoSubtracaoDinamica(1,2).runtimeType);


  
}

soma(int a, int b){
  return a + b;  
}

// criar uma função recursiva fatorial
int fatorial(int x ){
  if (x > 1){
    return fatorial(x-1) * x;
  }else{
    return x;
  }
}


