import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String name='taylor swift';
  String details='1 review 5 photos';
  String comment='comentario de prueba para las imagenes';

  Review (this.name,this.details,this.comment);

  @override
  Widget build(BuildContext context) {

    final usercomment=Container(
       margin: EdgeInsets.only(left: 20.0),
      child: Text(comment,textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Lato', fontSize: 13.0, fontWeight: FontWeight.w900),),
    );

    final userinfo=Container(
       margin: EdgeInsets.only(left: 20.0),
      child: Text(details,textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Lato', fontSize: 13.0, color: Color(0xffa3a5a7)),),
    );

    final username =Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(name,textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Lato', fontSize: 17.0),),
    );

    final userdetail=Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: <Widget>[
        username,
        userinfo,
        usercomment
      ],
    );

    final photo=Container(
      margin: EdgeInsets.only(top:20.0,left: 20.0),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/tailor.jpg'),
        ),
      ),
    );

    return Row(
      children:<Widget> [
        photo,
        userdetail
      ],
    );
  }
}