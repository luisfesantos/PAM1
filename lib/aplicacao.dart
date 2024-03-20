import 'package:aula2003/home_page.dart';
import 'package:aula2003/menu_page.dart';
import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Estabele em que rota o sistema deve iniciar
      initialRoute: "/",
      // Estabelece uma lista de rotas disponiveis no sistema
      routes: {
        "/": (_) => const HomePage(),
        "/menu": (_) => const MenuPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
