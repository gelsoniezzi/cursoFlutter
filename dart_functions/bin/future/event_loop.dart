// Este exemplo objetiva aplicar os conceitos de Eventos (menor prioridade) e microtask (maior prioridade.)
// Para utilização dessas é necessário importar a biblioteca "dart:async"
import 'dart:async';

main (){
  int numero = 2;
  int pilhaEvento = 0;
  int pilhaMicrotask = 0;

  print('Funcao síncrona - l1'); // 1

  Timer.run(() { // Primeiro da pilha de Eventos
    pilhaEvento += 1;
    print('Evento 1: Pilha evento: $pilhaEvento - l5' ); // 5
    Timer.run(() { // só vai executar o conteudo desse timer depois que rodar todas as linhas de fora.  - 4 na pilha de eventos
      pilhaEvento += 1;
      print('Timer.run dentro de um timer.run (evento 2) numero: $numero; Pilha evento: $pilhaEvento - l9'); // 9o
      numero = 99;
    }); // 
    scheduleMicrotask(() => print('Microtask 1 $numero - l6')); // 6
    
  });

  Timer.run(() {
    pilhaEvento += 1;
    print('Evento 2: Pilha evento: $pilhaEvento - l7'); // 7

  }); // 8o  - 2o na pilha de Eventos

  scheduleMicrotask(() {
    print('Microtask 2 - l3'); // 3
    numero = 3;
  }); // o primeiro a ser exibido de forma assíncrona

  Timer.run(() {
    pilhaEvento += 1;
    print('Evento 5; Pilha evento: $pilhaEvento - l8'); // 8
    numero = 999;    
    }); // 3o na pilha de eventos

  scheduleMicrotask(() => print('microtask 3  - $numero - l4')); // 4

  print('Síncrono numero $numero l l2'); // 2

}