import 'package:flutter/material.dart';

// metodo main é onde toda aplicacao baseada em dart comeca.
void main() => runApp(const Aplicacao());

// classe aplicacao, responsavel por gerenciar todo o nosso app.
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp é responsavel por gerenciar e estabelecer padroes para todas as telas do app.
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
    );
  }
}

// classe que representa a tela de aplicativo com todo seu layout.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final TextTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Resumo do Pedido",
                style: TextTheme.headlineLarge,
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Text("1x"),
                ),
                const Expanded(child: Text("Banana")),
                const Text("2,80"),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Text("2x"),
                ),
                const Expanded(child: Text("Morango")),
                const Text("8,90"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
