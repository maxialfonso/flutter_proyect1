import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  // const GradientBack({ Key? key }) : super(key: key);

  final String title;
  GradientBack(this.title);

  @override
  Widget build(BuildContext context) {

    final gradient = Container(
      height: 250,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp
        ) 
      ),

      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
        ),
      ),

      alignment: Alignment(-0.8, -0.4),

    );

    return gradient;
  }
}