import 'dart:io';

main(){

  // Realizar um loop com um sleep

  print('Inicio do fluxo.');
  
  int i =0;

  while (i <5) {
    print('Índice: $i');
    i++;
    sleep(const Duration(seconds: 2)); //
    print('Após o \'sleep\' $i'); // Perceba que essa instrução só é executada quando se acaba o sleep da instrucao anterior
  }

  print('Fim do fluxo.');

}