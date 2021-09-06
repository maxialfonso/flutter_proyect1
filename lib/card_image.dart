import 'package:flutter/material.dart';
import 'floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  // const CardImage({ Key? key }) : super(key: key);

  final String pathImage;

  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: 350,
      width: 250,
      margin: EdgeInsets.only(
        top: 80,
        left: 20
      ),

      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0 , 7)
          )
        ]
      ),
    );

    final cardButton = Stack(
      alignment: Alignment(0.9, 1.15),
      children: <Widget>[
        card,
        FloatingActionButtonGreen()
      ],
    );

    return cardButton;
    
  }
}