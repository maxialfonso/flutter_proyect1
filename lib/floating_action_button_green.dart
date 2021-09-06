import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  // const FloatingActionButtonGreen({ Key? key }) : super(key: key);

  @override
  _FloatingActionButtonGreenState createState() => _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {

  void onPressedFav(){
        const snackBar = SnackBar(content: Text('Les chiquesss!.'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    
    final button = FloatingActionButton(
      onPressed: onPressedFav,
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "El que lee es puto",
      child: Icon(
        Icons.favorite_border
      ),
    );

    return button;

  }
}