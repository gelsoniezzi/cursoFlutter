library logger;
import 'dart:io';

void error(Object object) => log(Cores.vermelho, "[ERROR]: $object");
void warning(Object object) => log(Cores.amarelo, "[WARNING]: $object");
void info(Object object) => log(Cores.verde, "[INFO]: $object");

//enumeração
enum Cores {verde, vermelho, amarelo}
const resetarCor = '\x1b[m';
// objeto de cores
const ansiCores = {
  Cores.verde: '\x1b[32m',
  Cores.vermelho: '\x1b[31m',
  Cores.amarelo: '\x1b[33m',
};

void log(Cores cor, Object object){
  stdout.writeln('${ansiCores[cor]}$object$resetarCor');
}