import 'package:flutter/material.dart';
import 'package:rosales/main.dart';

class Elenco {
  final String nome;
  final String personagem;
  final String img;

  Elenco(this.nome, this.personagem, this.img);
}

List<Elenco> elenco = [
  Elenco('Vincent Cassel', 'A Fera', 'assets/img/vincent.jpg'),
  Elenco('Léa Seydoux', 'Bela', 'assets/img/lea.jpg'),
  Elenco('Eduardo Noriega', 'Perducas', 'assets/img/eduardo.jpg'),
  Elenco('André Dussollier', 'O pai', 'assets/img/andre.jpg'),
  Elenco('Audrey Lamy', 'Anne', 'assets/img/audrey.jpeg'),
  Elenco('Jonathan Demurger', 'Jean-Baptiste', 'assets/img/jonathan.jpg'),
  Elenco('Sara Giraudeau', 'Clotilde', 'assets/img/sara.jpg'),
  Elenco('Nicolas Gob', 'Maxime', 'assets/img/nicolas.jpg'),
];

class PagElenco extends StatelessWidget {
  const PagElenco({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elenco'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
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
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: elenco.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(elenco[index].img),
            ),
            title: Text(elenco[index].nome),
            subtitle: Text('(${elenco[index].personagem})'),
          );
        },
      ),
    );
  }
}
