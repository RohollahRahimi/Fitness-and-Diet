import 'package:fitness/apBar.dart';
import 'package:fitness/bodybuilding.dart';
import 'package:fitness/dietTitle.dart';
import 'package:fitness/drawer.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;
  GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.linear)
          ..addListener(() {
            setState(() {});
          });
    animationController.reverse(from: 1);
  }

  Widget plans(String name, Function ontap) {
    return GestureDetector(
        onTap: ontap,
        child: Container(
          width: 300,
          height: 95,
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(bottom: 10, top: 10),
          decoration: BoxDecoration(
            color: Colors.purple.withOpacity(0.8),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
              child: Text(
            name,
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
            textDirection: TextDirection.rtl,
          )),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      endDrawer: new Drawer(
        child: MyDrawer(),
      ),
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.blueAccent, Colors.white])),
          child: Stack(
            children: <Widget>[
              Container(
                height: 250,
                width: double.infinity,
                child: CustomPaint(
                  painter: ThirdCurvedPainter(),
                ),
              ),
              Container(
                height: 195,
                width: double.infinity,
                child: CustomPaint(
                  painter: CurvedPainter(),
                ),
              ),
              Container(
                height: 165,
                width: double.infinity,
                child: CustomPaint(
                  painter: SecondCurvedPainter(),
                ),
              ),
              Positioned(
                left: 5,
                top: 30,
                child: IconButton(
                  icon: Icon(Icons.dehaze),
                  onPressed: () => _globalKey.currentState.openEndDrawer(),
                  color: Colors.white,
                  iconSize: 35,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top:220),
                  child: Opacity(
                    opacity: 0.6,
                    child: Image.asset(
                      'asset/images/3.png',
                    ),
                  )),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Transform(
                      transform: Matrix4.translationValues(
                          animation.value * 300, 0, 0),
                      child: plans('  برنامه بدنسازی', () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => BodyBuilding()));
                      }),
                    ),
                    Transform(
                      transform: Matrix4.translationValues(
                          animation.value * -300, 0, 0),
                      child: plans('  برنامه غذایی', () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => DietTitle()));
                      }),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
