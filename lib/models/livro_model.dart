class LivroModel {
  final String titulo;
  String descricao;
  bool lido;

  LivroModel({required this.titulo, this.descricao = '', this.lido = false});
}

final listaLivrosMock = [
  LivroModel(
    titulo: 'Codigo limpo',
    descricao: 'É um livro de para programadores',
    lido: false,
  ),
  LivroModel(
    titulo: 'O corpo fala',
    descricao: 'É um livro de para entender linguagem corporal',
    lido: false,
  ),
  LivroModel(
    titulo: 'Arquitetura de software',
    descricao: 'É um livro para arquitetura de software',
    lido: true,
  ),
  LivroModel(titulo: 'Arquitetura de software', lido: true),
];
