import 'package:flutter/material.dart';
import 'package:rosales/main.dart';

class Sinopse extends StatelessWidget {
  const Sinopse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sinopse'),
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
                  '⮕ A Bela e a Fera, 2014',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  'Bela é uma jovem sensível e compreensiva, que sempre põe os outros em primeiro lugar. '
                  'Quando seu pai se vê em uma situação complicada após contrair uma dívida e perder sua liberdade, '
                  'ela não hesita em viver em um castelo ao lado de um ser horrível para que possa salvá-lo.'
                  '\n\nTambém prisioneira, mas tratada como convidada na opulenta mansão, Bela começa a enxergar a beleza '
                  'do caráter da misteriosa criatura e passa a sentir afeto por ele.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
