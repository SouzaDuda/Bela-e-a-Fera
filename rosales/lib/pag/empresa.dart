import 'package:flutter/material.dart';
import 'package:rosales/main.dart';

class Empresa {
  final String nome;
  final String img;

  Empresa(this.nome, this.img);
}

List<Empresa> empresas = [
  Empresa('Eskwad', 'assets/img/eskwad.jpeg'),
  Empresa('Pathé', 'assets/img/pathe.jpeg'),
  Empresa('Studio Babelsberg', 'assets/img/studio.png'),
];

class PagEmpresa extends StatelessWidget {
  const PagEmpresa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Empresa'),
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
        itemCount: empresas.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(empresas[index].img),
            ),
            title: Text(empresas[index].nome),
          );
        },
      ),
    );
  }
}

