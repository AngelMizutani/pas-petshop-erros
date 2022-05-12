void show() {
  print(calcularQtdeComprimidos(10, 5));
  print(calcularGotas(2, 0.5));
  print(calcularDose(5, 1));
  print(calcularQtdeRacaoPacote(10, 0));
  print(calcularValorVenda(15.00, 3));
}

double calcularQtdeComprimidos(double peso, double concentracao) {
  var qtde = 0.0;
  try {
    qtde = peso / concentracao;
  } catch (e) {
    print(e);
  }
  return qtde;
}

int calcularGotas(double peso, double concentracao) {
  var gotas = 0;

  try {
    gotas = peso ~/ concentracao;
  } catch (e) {
    print(e);
  }

  return gotas;
}

double calcularDose(double peso, double concentracao) {
  var dose = 0.0;
  try {
    dose = peso / concentracao;
  } catch (e) {
    print(e);
  }
  return dose;
}

double calcularQtdeRacaoPacote(int qtdeTotal, int numPacotes) {
  var qtde = 0.0;

  try {
    qtde = qtdeTotal / numPacotes;
  } on IntegerDivisionByZeroException {
    print('Informe a quantidade de pacotes correta!');
  } catch (e) {
    print(e);
  }

  return qtde;
}

double calcularValorVenda(double valorProduto, int qtde) {
  try {
    return valorProduto * qtde;
  } catch (e) {
    print(e);
  }

  return 0;
}
