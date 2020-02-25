import 'package:fitness/apBar.dart';
import 'package:fitness/bodybuilding.dart';
import 'package:fitness/dietDetails.dart';
import 'package:flutter/material.dart';

class DietTitle extends StatelessWidget {
  BodyBuilding bodyBuilding=new BodyBuilding();
  @override
  Widget build(BuildContext context) {
    List times = <Widget>[
      bodyBuilding.makeListView('توصیه های کلی', () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => DietDetails(
            indx: 0,
          ),
        ));
      }),
      bodyBuilding.makeListView('صبحانه', () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => DietDetails(
            indx: 1,
          ),
        ));
      }),
      bodyBuilding.makeListView('ساعت 10 صبح', () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => DietDetails(
            indx: 2,
          ),
        ));
      }),
      bodyBuilding.makeListView(' ناهار', () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => DietDetails(
            indx: 3,
          ),
        ));
      }),
      bodyBuilding.makeListView('قبل از تمرین', () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => DietDetails(
            indx: 4,
          ),
        ));
      }),
      bodyBuilding.makeListView(' بعد از تمرین', () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => DietDetails(
            indx: 5,
          ),
        ));
      }),
      bodyBuilding.makeListView('شام', () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => DietDetails(
            indx: 6,
          ),
        ));
      }),
    ];
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Padding(
                  padding: const EdgeInsets.only(top:170),
                  child: Opacity(
                    opacity: 0.6,
                    child: Image.asset(
                      'asset/images/2.png',
                    ),
                  )),
        Container(
          margin: const EdgeInsets.only(top: 130),
          child: Center(
            child: ListView.builder(
              itemCount: times.length,
              itemBuilder: (BuildContext context, int index) {
                return times[index];
              },
            ),
          ),
        ),
        
        Container(
          height: 170,
          width: double.infinity,
          child: CustomPaint(
            painter: SecondCurvedPainter(),
          ),
        ),
        Positioned(
                left: 20,
                top: 30,
                child: IconButton(icon: Icon(Icons.arrow_back),
                onPressed:()=>Navigator.of(context).pop(),
                color: Colors.white,
                iconSize: 35,
                ),
              ),
      ],
    ));
  }
}
