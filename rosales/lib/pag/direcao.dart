import 'package:flutter/material.dart';
import 'package:rosales/main.dart';

class Autores {
  final String nome;
  final String img;

  Autores(this.nome, this.img);
}

List autores = [
  Autores('Jeanne-Marie Leprince de Beaumont', 'assets/img/jeanne.jpg'),
  Autores('Christophe Gans', 'assets/img/gans.jpg'),
  Autores('Sandra Vo-Anh', 'assets/img/sandra.jpg'),
];

class Direcao extends StatelessWidget {
  const Direcao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produção / Direção'),
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
                  'Escrito por Christophe Gans e Sandra Vo-Anh e dirigido por Christophe Gans.'
                  '\n\nHistória original, A Bela e o Monstro, escrita por Jeanne-Marie Leprince de Beaumont (1711-1776)'
                  '\n\n⭢ Nome Francês/Original: La Belle et la Bête (filme de 2014)',
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: autores.length,
            itemBuilder: (BuildContext contexto, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(autores[index].img),
                ),
                title: Text(autores[index].nome),
              );
            },
          ),
        ],
      ),
    );
  }
}
