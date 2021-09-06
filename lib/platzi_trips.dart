import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class PlatziTrips extends StatefulWidget {
  // const PlatziTrips({ Key? key }) : super(key: key);

  @override
  _PlatziTripsState createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {

  int indexTap = 0;

  final List<Widget> widgetsChildrens = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];
  
  void onTapTapped ( int index ){
    setState(() {
      indexTap = index;
    });
  }



  @override
  Widget build(BuildContext context) {

    final cafol = Scaffold(
      body: widgetsChildrens[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped ,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ""
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: ""
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ""
              )
          ],) ,
        ),
    );




    return cafol;
  }
}