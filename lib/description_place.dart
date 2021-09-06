import 'package:flutter/material.dart';
import 'button_puple.dart';

class DescriptionPlace extends StatelessWidget {
  //variables
  final String namePlace;
  final String descriptionPlace;
  final int stars;

  //Construir un constructor en dart
  DescriptionPlace( this.namePlace, this.stars, this.descriptionPlace );
  
  @override
  Widget build(BuildContext context) {
    // throw UnimplementedError();
      final star = Container(
        margin: EdgeInsets.only(
          top: 300,
          right: 3,
        ),

        child: Icon(
          Icons.star,
          color: Color(0xFFf2c611)
        ),
      );
      
      final starHalf = Container(
        margin: EdgeInsets.only(
          top: 300,
          right: 3,
        ),

        child: Icon(
          Icons.star_half,
          color: Color(0xFFf2c611)
        ),
      );
      
      final starBorder = Container(
        margin: EdgeInsets.only(
          top: 300,
          right: 3,
        ),

        child: Icon(
          Icons.star_border,
          color: Color(0xFFf2c611)
        ),
      );

      final description = Container(
        margin: EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20
        ),

        child: new Text(
          descriptionPlace,
          style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)
          ),
        )
      );

      final titleStar = 
      Row(
        children: <Widget> [
          Container(
            margin: EdgeInsets.only(
              top: 300,
              left: 20,
              right: 20
            ),

            child: Text(
              namePlace,
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 30,
                fontWeight: FontWeight.w900
              ),

              textAlign: TextAlign.left

            ),

          ),

          Row(
            children: <Widget>[
              star,
              star,
              star,
              starHalf,
              starBorder
            ],
          )

        ],
      );

      final cuerpo =  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          titleStar,
          description,
          ButtonPurple("Navigate")
        ],
      );

    return cuerpo;
  }
  
}