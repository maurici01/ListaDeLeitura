import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listadeleitura/pages/formulario_livro_page.dart';

import 'package:listadeleitura/pages/lista_livros_page.dart'
    show ListaLivroPage;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.kalamTextTheme(Theme.of(context).textTheme),
      ),

      routes: {
        // rotas
        '/': (context) => ListaLivroPage(), //pagina inicial
        '/form': (context) => FormularioLivroPage(), //pagina de formulario
      },
    );
  }
}
