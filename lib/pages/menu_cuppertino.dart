import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platzi/pages/home_trip.dart';
import 'package:platzi/pages/profiletrips.dart';
import 'package:platzi/pages/searchtrip.dart';
class Menucupertino extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(

          //backgroundColor: Colors.black26,
          backgroundColor: Color(0x33FFFFFF),
  //backgroundColor: Colors.white.withAlpha(50),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.indigo),
                  label: null
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.indigo),
                  label: null
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.indigo),
                  label: null
              ),
            ]
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => Hometrip(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => Searchtrip(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => Profiletrip(),
              );
              break;

          }
        },
      ),
      
    );
  }
}