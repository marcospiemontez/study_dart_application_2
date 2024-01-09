void main() {
  escolherMeioTransporte(Transporte.carro);
  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos("Rio Grande do Sul", registrosVisitados);
  registrosVisitados = registrarDestinos("Santa Catarina", registrosVisitados);

  Map<String, dynamic> registrarPrecos = {};

  registrarPrecos["São Paulo"] = 1200.0;
  registrarPrecos["Rio de Janeiro"] = 1500.0;
  registrarPrecos.remove("São Paulo");

  print(registrarPrecos);
}

Set<String> registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}

void escolherMeioTransporte(Transporte locomocao) {
  String mensagem;

  switch (locomocao) {
    case Transporte.carro:
    case Transporte.bike:
    case Transporte.andando:
    case Transporte.skate:
    case Transporte.aviao:
    case Transporte.onibus:
    case Transporte.trem:
      mensagem = "Vou de $locomocao para Aventura";
      break;
    default:
      mensagem = "Meio de transporte não reconhecido";
  }

  print(mensagem);
}

enum Transporte {
  carro,
  bike,
  andando,
  skate,
  aviao,
  onibus,
  trem,
}

class Viagem {
  double dinheiro;

  Viagem(this.dinheiro);
}
