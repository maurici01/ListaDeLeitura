import 'package:flutter/material.dart';
import 'package:listadeleitura/models/livro_model.dart';
import 'package:listadeleitura/widgets/linha_horizontal.dart';

class ListaLivro extends StatelessWidget {
  const ListaLivro({super.key, required this.listaLivros});

  final List<LivroModel> listaLivros;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, i) {
        final livro = listaLivros[i];
        return ListTile(
          title: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Text(
              livro.titulo,
              style: TextStyle(
                color: livro.lido ? Colors.grey : Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                decoration: livro.lido ? TextDecoration.lineThrough : null,
              ),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Text(
              livro.descricao,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                color: livro.lido ? Colors.grey : Colors.black,
                decoration: livro.lido ? TextDecoration.lineThrough : null,
              ),
            ),
          ),
          visualDensity: VisualDensity.compact,
          contentPadding: EdgeInsets.all(0),
        );
      },
      separatorBuilder: (context, i) {
        return LinhaHorizontal();
      },
      itemCount: listaLivros.length,
    );
  }
}
