import 'package:flutter/material.dart';
import 'package:platzi/pages/review.dart';

class Reviewlist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        Review('alexandra quispe', '4 estrellas y dos fotos', 'descripcion de la primera foto'),
        Review('cristina chura', '4 estrellas y dos fotos', 'segundo comentario'),
        Review('marcela gandara', '4 estrellas y dos fotos', 'este va ser el tercero'),
        Review('jhoana mamani', '4 estrellas y dos fotos', 'y el ultimo comentario'),
      ],
    );
  }
}