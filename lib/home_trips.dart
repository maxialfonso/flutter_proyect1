import 'package:flutter/material.dart';
import 'package:flutter_trips_app/review_list.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  // const HomeTrips({ Key? key }) : super(key: key);

  final String textComment = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";

  @override
  Widget build(BuildContext context) {

    final home = Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace( "Rio Cuarto",3,textComment ),
                ReviewList()
              ],
            ),
            HeaderAppBar()
          ],
          );

    return home;
  }
}