enum Cor {azul, vermelho, amarelo}

var textoCores = {
    Cor.azul: 'azul',
    Cor.vermelho: 'vermelho',
    Cor.amarelo: 'amarelo',
  };

void main(){

    
  print('Hello ${qualCor(Cor.azul)} world.');

}

String? qualCor(Cor cor){
    return textoCores[cor];
}