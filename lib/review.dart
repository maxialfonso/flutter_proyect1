import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  final String pathImage;
  final String name;
  final String details;
  final String comment;

  Review (this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    
    final photo = Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20
      ),

      width: 80,
      height: 80,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20),
      child: Text(
        name, 
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17
        ),
        ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20, top: 3),
      child: Text(
        details, 
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13,
          color: Color(0xFFa3a5a7)
        ),
        ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(left: 20, top: 3),
      child: Text(
        comment, 
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13,
          fontWeight: FontWeight.w900
        ),
        ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );



    
    final comentarioUsuario = Row(
      children: <Widget>[
        photo,
        userDetails

      ],
    );

    return comentarioUsuario;
  }
}