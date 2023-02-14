import 'package:flutter/material.dart';
import 'package:platzi/pages/gradient_back.dart';
import 'package:platzi/pages/image_list.dart';
class HeaderAppbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack(),
        ImageList(),
      ],
    );
  }
}