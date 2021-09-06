import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  // const ReviewList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final list = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/girl1.jpg", "Sabri Hermosa", "12 review · 10 photos", "The girl is Nico's best friend"),
        Review("assets/img/girl2.jpg", "Anto Chequeetaa", "20 review · 51 photos", "The girl is Nico's best friend"),
        Review("assets/img/boy1.jpg", "Yonatan Suarez", "2 review · 5 photos", "The girl is Nico's best friend"),
        Review("assets/img/boy2.jpg", "Mikeas Gonzalez", "6 review · 7 photos", "The girl is Nico's best friend")
      ],

    );


    return list;
    
  }
}