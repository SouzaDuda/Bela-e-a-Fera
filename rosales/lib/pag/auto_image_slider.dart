import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyImageSlider extends StatefulWidget {
  const MyImageSlider({super.key});

  @override
  State<MyImageSlider> createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  final List<String> imageList = [
    'img/B1.jpeg',
    'img/B2.jpg',
    'img/B3.jpg',
    'img/B5.png',
    'img/B7.jpeg',
  ];

  int meuValorAtual = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            autoPlay: true, // troca de imagem automaticamente
            viewportFraction: 0.6, //define o quanto a imagem irá ocupar, quando <= 1 a img principal ocupará mais e as laterais serão menos visíveis, quando > 1 mais será possível ver as imagens laterais
            enlargeCenterPage: true, // a img central fica em maior destaque
            onPageChanged: (index, reason) { // é tipo um "contador" vai atualizando o valor de acordo com a mudança de imagem
              setState(() { // estado atual
                meuValorAtual = index; // ou seja, toda vez que muda a img o índice é atualizado
              });
            },
          ),
          items: imageList.map((item) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                item,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 20), // espaço que separa a galeria dos pontinhos
        Row( // sequência
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageList.asMap().entries.map((entry) {
            return Container(
              width: 10, //tamanho e altura dos pontinhos
              height: 10, 
              margin: const EdgeInsets.symmetric(horizontal: 5), //diferença de espaçamento de cada bolinha
              decoration: BoxDecoration(
                shape: BoxShape.circle, // formato do negócio que indica em qual img está
                color: meuValorAtual == entry.key ? Colors.indigo : Colors.grey, //define o cinza como padrão e o roxo para indicar em qual img está
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

