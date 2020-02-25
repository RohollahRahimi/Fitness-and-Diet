import 'package:fitness/apBar.dart';
import 'package:fitness/daysPlan.dart';
import 'package:flutter/material.dart';

class BodyBuilding extends StatelessWidget {

  Widget makeListView(String name, Function ontap) {
    return GestureDetector(
        onTap: ontap,
        child: Container(
          margin: const EdgeInsets.only(top:8,bottom: 5,left: 20,right: 20),
          padding: const EdgeInsets.symmetric(vertical: 19),
          decoration: BoxDecoration(
              color: Colors.orange[300].withOpacity(0.9),
              border: Border.all(color: Colors.grey[300], width: 1),
              boxShadow: [
                BoxShadow(
                    color: Colors.black54, blurRadius: 4, offset: Offset(2, 0))
              ]),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(name,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,height: 1.5),),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    List days = <Widget>[
      makeListView('شنبه', () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => DaysPlan(
            index: 0,
          ),
        ));
      }),
      makeListView('یکشنبه', () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => DaysPlan(
            index: 1,
          ),
        ));
      }),
      makeListView('دوشنبه', () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => DaysPlan(
            index: 2,
          ),
        ));
      }),
      makeListView('سه شنبه', () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => DaysPlan(
            index: 5,
          ),
        ));
      }),
      makeListView('چهارشنبه', () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => DaysPlan(
            index: 3,
          ),
        ));
      }),
      makeListView('پنج شنبه', () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => DaysPlan(
            index: 4,
          ),
        ));
      }),
      makeListView('جمعه', () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => DaysPlan(
            index: 5,
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
              itemCount: days.length,
              itemBuilder: (BuildContext context, int index) {
                return days[index];
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
