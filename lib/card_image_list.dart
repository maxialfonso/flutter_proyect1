import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  // const CardImageList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final lista = Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/paisaje1.jpg"),
          CardImage("assets/img/paisaje2.jpg"),
          CardImage("assets/img/paisaje3.jpg"),
          CardImage("assets/img/paisaje4.jpg"),
          CardImage("assets/img/paisaje1.jpg"),
          CardImage("assets/img/paisaje2.jpg"),
          CardImage("assets/img/paisaje3.jpg"),
          CardImage("assets/img/paisaje4.jpg")
        ],
      ),
    );

    return lista;
  }
}
