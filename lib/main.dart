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
    final num1Controller = TextEditingController();
    final num2Controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 250,
              child: TextField(
                controller: num1Controller,
                decoration: const InputDecoration(labelText: "Digite 1 Numero"),
              ),
            ),
            SizedBox(
              width: 250,
              child: TextField(
                controller: num2Controller,
                decoration: const InputDecoration(labelText: "Digite 2 Numero"),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () =>
                    soma(context, num1Controller.text, num2Controller.text),
                child: const Text("Soma!"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void soma(BuildContext context, num1Controller, num2Controller) {
    int num1 = int.parse(num1Controller);
    int num2 = int.parse(num2Controller);
    int soma = num1 + num2;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(soma.toString()),
      ),
    );
  }
}
