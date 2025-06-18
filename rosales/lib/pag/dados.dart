import 'package:flutter/material.dart';
import 'package:rosales/main.dart';

class Dados extends StatelessWidget {
  const Dados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dados'),
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
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'O filme foi lançado na França em 12 de fevereiro de 2014 e exibido no 64º Festival de Berlim '
                  'em 14 de fevereiro e no Brasil em 25 de setembro do mesmo ano.\n\n'
                  'No Japão, o filme liderou as bilheterias no seu lançamento, tornando-se o primeiro filme que '
                  'não foi de língua inglesa no topo da bilheteria japonesa desde o filme A Batalha dos 3 Reinos '
                  'em 2009, e é o primeiro filme francês no topo da bilheteria japonesa desde o filme '
                  'Les Rivières Pourpres de Mathieu Kassovitz em 2001.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
