import 'package:calculadora_imc/calculadora_imc.dart' as calculadora_imc;
import 'dart:io';

void main(List<String> arguments) {

  String nome;

  while (true) {
    stdout.write('Informe seu nome: ');
    final input = stdin.readLineSync();

    if (input != null && input.trim().isNotEmpty) {
      nome = input.trim();
      break;
    }

    print('Nome inválido. O nome não pode estar vazio. Tente novamente.');
  }


  double altura;
  while (true) {
    stdout.write('Informe a altura da pessoa (em metros): ');
    final input = stdin.readLineSync();
    if (input != null && double.tryParse(input) != null) {
      altura = double.parse(input);
      break;
    }
    print('Valor de altura inválido. Tente novamente.');
  }

  double peso;
  while (true) {
    stdout.write('Informe o peso da pessoa (em quilogramas): ');
    final input = stdin.readLineSync();
    if (input != null && double.tryParse(input) != null) {
      peso = double.parse(input);
      break;
    }
    print('Valor de peso inválido. Tente novamente.');
  }

  final pessoa = calculadora_imc.CalculadoraIMC(nome, altura, peso);

  final imc = pessoa.imc;


  print('Dados da pessoa:');
  print('Nome: $nome');
  print('Altura: $altura metros');
  print('Peso: $peso kg');
  print('IMC: ${imc.toStringAsFixed(2)}');
  print('Resultado Final: ${pessoa.calcularIMC()}');
}
