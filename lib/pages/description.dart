import 'package:flutter/material.dart';
import 'package:platzi/pages/buttonpurple.dart';

class Description extends StatelessWidget {


   String nameplace;
    int stars;
    String descriptionplace;
//constructor
    Description(this.nameplace,this.stars,this.descriptionplace);
//texto de ejemplo para la descripcion
    String vartexto='texto de ejemplo:Los paisajes naturales son aquellos espacios geográficos que no han sido modificados por el ser humano. En contraposición, los sitios alterados por la actividad humana se conocen como paisajes culturales';

  @override
  Widget build(BuildContext context) {

   

    final description=Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        descriptionplace,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xff56575a)
        ),
      ),
    );

    final start_half=Container(
      margin: EdgeInsets.only(
        top:323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),

      ),
    );

    final start_border=Container(
      margin: EdgeInsets.only(
        top:323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),

      ),
    );

    final start=Container(
      margin: EdgeInsets.only(
        top:323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),

      ),
    );

    final title_start=Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top:320.0,
            left:20.0,
            right: 20.0
          ),
          child: Text(
            nameplace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            start,
            start,
            start,
            start_half,
            start_border,
          ],
        )
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget>[
        title_start,
        description,
        ButtonPurple()
      ],
    );
  }
}