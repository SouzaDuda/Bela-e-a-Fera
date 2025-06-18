import 'package:flutter/material.dart';
import 'package:rosales/main.dart';

class Genero extends StatelessWidget {
  const Genero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gênero'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '⮕ Fantasia e Romance',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  'Fantasia: é um gênero literário que explora mundos e personagens imaginários, muitas vezes com elementos sobrenaturais, magia e criaturas fantásticas.\n\n'
                  'Romance: foca nos relacionamentos e na construção de histórias amorosas, frequentemente explorando os desafios e complexidades da vida amorosa.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
