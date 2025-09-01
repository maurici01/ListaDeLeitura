import 'package:flutter/material.dart';

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
      body: Center(
        child: Text('Lista de Livros', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
