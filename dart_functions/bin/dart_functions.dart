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

  // função normal  
  int somar(int x, int y){
    return x + y;
  }

  // função anônima: Função sem nome, geralmente atribuída a alguma variável
  var multiplicar = (int x, int y) {
    return x * y;
  };

  //exemplo 1
  Function funcaoSubtracao = (int x, int y) {
    return x - y;
  };

  print('Funcao anonima multiplicar = ${multiplicar(2,3)}');

  // Função flecha
  int somaFlecha(x, y) => x + y; //a arrow function não tem a palavra reservada *return*

  print('Soma flecha ${somaFlecha(10, 20)}');

  // Função flecha: Arrow function + funcao anonima
  var subtracaoAnonimaArrow = (x, y) => x - y; 

  print('soma arrow ${subtracaoAnonimaArrow(20.1, 10)}');


  // Função parâmetro. Uma função pode ser passada como parâmetro para outra função

  var operacao = (x, y, Function op)  {
    return op(x, y);
  };

  print('Operacao somar: ${operacao(1,2,somar)}');
  print('Operacao somaFlecha: ${operacao(1,2,somaFlecha)}');
  print('Operacao somar: ${operacao(1,2,somar)}');
  
  print('Operação subtração: ${operacao(3,2,funcaoSubtracao)}');


  




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

  

  // Nesse e
  print(funcaoSubtracao(10, 2));

  Function funcaoSubtracaoDinamica = (x ,y) {
    return x - y;
  };

  print(funcaoSubtracaoDinamica(12.8,6.6)); // A saída tem um problema relacionado ao float: 6.200000000000001

  print(funcaoSubtracaoDinamica(12.8,6.6).runtimeType); // saída: double

  print(funcaoSubtracaoDinamica(1,2).runtimeType); // saída: int

  // 
  // Tear-off
  // O forEach, é uma função com a seguinte assinatura void forEach (void f(E element))
  // É passado uma função para cada elemento da lista
  

  var numeros = [1,2,3,5,8];

  numeros.forEach((e) => print('Veja: $e\n'));

  
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


