import 'pessoa.dart';

class CalculadoraIMC extends Pessoa {
  double _imc = 0.0;

  CalculadoraIMC(String nome, double altura, double peso) : super(nome, altura, peso);

  double get imc {
    _imc = peso / (altura * altura);
    return _imc;
  }

  calcularIMC() {
    if (imc < 16.0) {
      return 'Magreza Grave';
    } else if (imc == 16.0 || imc < 17.0) {
      return 'Magreza Moderada';
    } else if (imc == 17.0 || imc < 18.5) {
      return 'Magreza Leve';
    } else if (imc == 18.5 || imc < 25.0) {
      return 'Saudável';
    } else if (imc == 25.0 || imc < 30.0) {
      return 'Sobrepeso';
    } else if (imc == 30.0 || imc < 35.0) {
      return 'Obesidade Grau I';
    } else if (imc == 35.0 || imc < 40.0) {
      return 'Obesidade Grau II (Severa)';
    } else {
      return 'Obesidade Grau III (Mórbida)';
    }
  }


}
