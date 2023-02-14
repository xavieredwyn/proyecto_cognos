import 'package:flutter/material.dart';
import 'package:platzi/pages/home_trip.dart';
import 'package:platzi/pages/profiletrips.dart';
import 'package:platzi/pages/searchtrip.dart';
class Navigationtrip extends StatefulWidget {

  @override
  _NavigationtripState createState() => _NavigationtripState();
}

class _NavigationtripState extends State<Navigationtrip> {

  int indice=0;

  final List<Widget>widgetChildren=[
    Hometrip(),
    Searchtrip(),
    Profiletrip()
  ];

    void cambiapagina(int index){
      setState(() {
        indice=index;
      });
    }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widgetChildren[indice],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: cambiapagina,
          currentIndex: indice,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ''
            ),
          ],
        ),
      ),
        //body: Hometrip()
      );
  }
}