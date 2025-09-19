import 'package:flutter/material.dart';

class FormularioLivroPage extends StatefulWidget {
  const FormularioLivroPage({super.key});

  @override
  State<FormularioLivroPage> createState() => _FormularioLivroPageState();
}

class _FormularioLivroPageState extends State<FormularioLivroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EF88),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 10),
            child: Text(
              'Inclua seu novo livro',
              style: TextStyle(
                color: Color(0xFF498C9A),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Título',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22),
            child: TextFormField(
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'Descrição',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28),
            child: Row(
              children: [
                Text('Já li este livro'),
                Checkbox(value: false, onChanged: (valor) {}),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40),
              backgroundColor: Color(0xFFE67F22),
            ),

            child: Text(
              'Cadastrar',
              style: TextStyle(color: Colors.white, fontSize: 26),
            ),
          ),
        ],
      ),
    );
  }
}
