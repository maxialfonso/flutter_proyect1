import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  // const ButtonPurple({ Key? key }) : super(key: key);

  final String texto;

  ButtonPurple(this.texto);

  @override
  Widget build(BuildContext context) {

    final button = InkWell(
      onTap: (){
        const snackBar = SnackBar(content: Text('Navegando como el naufrago...'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20
        ),
        height: 50,
        width: 182,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD1)
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0 , 0.6),
            stops: [0.0 , 0.6],
            tileMode: TileMode.clamp
          )
        ),

        child: Center(
          child: Text(
            texto,
            style: TextStyle(
              fontSize: 18,
              fontFamily: "Lato",
              color: Colors.white
            )
            )
          ),
      )
    );

    return button;
  }
}