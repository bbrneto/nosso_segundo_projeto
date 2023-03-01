import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class InitialScreen extends StatefulWidget {
  // Dados a serem alterados
  // ...
  // ...

  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  // Estado a ser alterado
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(
          milliseconds: 800,
        ),
        child: ListView(
          // scrollDirection: Axis.horizontal,
          children: const [
            Task(
                'Aprender Flutter',
                'assets/images/dash.png',
                3),
            Task(
                'Andar de bike',
                'assets/images/bike.jpg',
                2),
            Task(
                'Ler',
                'assets/images/book.jpg',
                5),
            Task(
                'Aprender Machine Learning',
                'assets/images/robot.jpg',
                4),
            Task(
                'Pilotar um helicóptero',
                'assets/images/helicopter.jpg',
                1),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
