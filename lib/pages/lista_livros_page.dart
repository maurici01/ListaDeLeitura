import 'package:flutter/material.dart';
import 'package:listadeleitura/widgets/linha_horizontal.dart';

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
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 58),
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
                          onPressed: () {},
                          child: Icon(Icons.add),
                          mini: true,
                        ),
                      ],
                    ),
                  ),
                  LinhaHorizontal(),
                  ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(left: 58.0),
                          child: Text(
                            'Código limpo',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 58.0),
                          child: Expanded(
                            child: Text(
                              'Uma descrição qualquer só para testar se está funcional',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.black),
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
                    itemCount: 35,
                  ),
                  LinhaHorizontal(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0),
                child: VerticalDivider(color: Colors.red[200], thickness: 3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
