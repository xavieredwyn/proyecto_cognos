import 'package:flutter/material.dart';
import 'package:platzi/pages/review_list.dart';

import 'description.dart';
import 'header_appbar.dart';
class Hometrip extends StatelessWidget {

   String vartexto='Texto de ejemplo: Los paisajes naturales son aquellos espacios geográficos que no han sido modificados por el ser humano. En contraposición, los sitios alterados por la actividad humana se conocen como paisajes culturales';

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: <Widget>[
            ListView(
              children:<Widget> [
                Description('Bahamas',4,vartexto),
                Reviewlist()
              ],
            ),
            HeaderAppbar()
          ],
        );
  }
}