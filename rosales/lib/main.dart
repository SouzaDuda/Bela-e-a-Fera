import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:rosales/pag/dados.dart';
import 'package:rosales/pag/direcao.dart';
import 'package:rosales/pag/elenco.dart';
import 'package:rosales/pag/empresa.dart';
import 'package:rosales/pag/genero.dart';
import 'package:rosales/pag/sinopse.dart';
import 'pag/auto_image_slider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rosales, A Bela e a Fera',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Rosales, A Bela e a Fera'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 10),

          // Galeria de imagens
          const MyImageSlider(),

          const SizedBox(height: 20),

          // ExpansionTile: Informações
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ExpansionTile(
              title: const Text(
                'Informações',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Sinopse()));
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Sinopse'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Direcao()));
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Produção'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const PagEmpresa()));
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Empresa'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Genero()));
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Gênero'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Dados()));
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Dados'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const PagElenco()));
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Elenco'),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ExpansionTile(
              title: const Text(
                'Links',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [ Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Trailer', style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    const Text('Oficial: '),
                    TextButton(
                      onPressed: () => _launchURL('https://www.youtube.com/watch?v=837XlTf8b6g&ab_channel=Pathe'),
                      child: const Text('Youtube'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text('Legendado: '),
                    TextButton(
                      onPressed: () => _launchURL('https://www.youtube.com/watch?v=CREtSttdVqs&ab_channel=%E6%98%A0%E7%94%BB%E3%82%AB%E3%83%AB%E3%83%81%E3%83%A5%E3%82%A2FilmIsNowJapan'),
                      child: const Text('Youtube'),
                    ),
                  ],
                ),
                const Text('Site e Redes Sociais: Pathé',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: () => _launchURL('https://www.pathe.com/en/'),
                  child: const Text('Site'),
                ),
                TextButton(
                  onPressed: () => _launchURL('https://www.instagram.com/pathefrance/'),
                  child: const Text('Instagram'),
                ),
              ],
            ),
        ]),
      )],
      ),
    );
  }
 static Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      // Em vez de throw, só imprime para não causar erro
      debugPrint('Não foi possível abrir: $url');
    }
  }
}
