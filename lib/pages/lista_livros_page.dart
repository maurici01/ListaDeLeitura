import 'package:flutter/material.dart';
import 'package:listadeleitura/models/livro_model.dart';
//import 'package:listadeleitura/pages/formulario_livro_page.dart';
import 'package:listadeleitura/widgets/linha_horizontal.dart';
import 'package:listadeleitura/widgets/lista_livro.dart';

class ListaLivroPage extends StatefulWidget {
  const ListaLivroPage({super.key});

  @override
  State<ListaLivroPage> createState() => _ListaLivroPageState();
}

class _ListaLivroPageState extends State<ListaLivroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EF88),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 38),
              child: VerticalDivider(color: Colors.red[200], thickness: 3),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Lista de Livros',
                            style: TextStyle(
                              color: Color(0xFF498C9A),
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          FloatingActionButton(
                            //botão
                            onPressed: () {
                              // quando pressiona no botão navega para outra pagina
                              Navigator.of(context).pushNamed('/form');
                            },
                            mini: true,
                            child: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                    LinhaHorizontal(),
                    ListaLivro(listaLivros: listaLivrosMock),
                    LinhaHorizontal(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
