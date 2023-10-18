class Pessoa {
  String nome;
  double altura;
  double peso;

  Pessoa(this.nome, this.altura, this.peso);

  @override
  String toString() {
    return 'Pessoa{_nome: $nome, _altura: $altura, _peso: $peso}';
  }
}
