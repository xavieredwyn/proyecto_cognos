import 'package:flutter/material.dart';
import 'package:platzi/pages/card_image.dart';

class ImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage('assets/paisaje1.jpg'),
          CardImage('assets/paisaje2.jpg'),
          CardImage('assets/paisaje3.jpg'),
          CardImage('assets/paisaje4.jpg'),
          CardImage('assets/paisaje5.jpg'),
        ],
      ),
    );
  }
}