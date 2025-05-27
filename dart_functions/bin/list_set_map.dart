

main(){
  //--------------------------------------
  // List [...]

  List<int> notas = [1,2,3]; // lista de inteiros

  for (int i in notas){
    print('$i');
  }
  print('tamanho da lista notas = ${notas.length}');
  // Lista vazia
  List<int> listaVazia = [];

  print('$listaVazia de tamanho = ${listaVazia.length}');

  // Uma lista pode conter tipos diferentes de dados

  List<dynamic> valores = ['Gelson', '34', DateTime(1991,05,22)];
  print(valores);
  for(var v in valores){
    print('$v é do tipo ${v.runtimeType}');
  }

  //--------------------------------------
  // Set {...}
  // o set é uma coleção não ordenada de elementos únicos
  // um set com números duplicados retorna apenas os valores únicos

  var set1 = {1,2,2,3,4,5,5,6,7,'Gelson'};

  print(set1); // {1, 2, 3, 4, 5, 6, 7}

  print(set1.runtimeType);

  //--------------------------------------
  // Map {...}
  // O Map é uma estrutura <chave: valor>
  // Em caso de repetição da chave, os valores são sobrescritos

  var idades = {'gelson': 34, 'monalisa': 31, 'eduardo': 4, 'joao': 34};

  print('A idade de \'gelson\' é ${idades['gelson']}');

  var tamanhos = {'gelson': 39, 'raquel': 34, 'gelson': 40}; // o ultimo valor foi exibido
  print(tamanhos);
}