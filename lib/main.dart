import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Column(
              children: [
                Text("Atividade"),
                Text("Atividade"),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Text("Nome: Luis Felipe"),
                ],
              ),
              Row(
                children: [
                  Text("Email: luis.santos585@etec.sp.gov.br"),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("2H3"),
                  Text("Matão"),
                ],
              ),
              Text("2024"),
            ],
          ),
        ],
      ),
    );
  }
}
