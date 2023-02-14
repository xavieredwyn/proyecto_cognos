import 'package:flutter/material.dart';
class Floatingbutton extends StatefulWidget {

  @override
  _FloatingbuttonState createState() => _FloatingbuttonState();
}

class _FloatingbuttonState extends State<Floatingbutton> {

  void presionado(){
    
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xff11da53),
      mini: true,
      tooltip: 'fav',
      child: Icon(Icons.favorite_border),
      onPressed: presionado,
    );
  }
}