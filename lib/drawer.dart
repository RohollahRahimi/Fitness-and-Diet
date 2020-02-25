import 'package:fitness/dietDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {

  _launchURL() async {
  const url = 'https://telegram.me/RohollahRahimi';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
  Future<void> share() async {
    await FlutterShare.share(
      title: 'برنامه بدنسازی و برنامه غذایی',
      text: 'بهترین و جامع ترین برنامه بدنسازی و برنامه غذایی برای '
      'رسیدن به وزن و تناسب اندام ایده آل تان',
      linkUrl: 'https://telegram.me/RohollahRahimi',
      chooserTitle: 'share tha app to support us'
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: <Widget>[
        Container(
          height: 150,
          color: Colors.green,
          child: Center(
            child: Text(
              'برنامه بدنسازی و برنامه غذایی',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              textDirection: TextDirection.rtl,
            ),
          ),
        ),
        FlatButton(
          padding: const EdgeInsets.symmetric(vertical: 20),
          splashColor: Colors.green,
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => DietDetails(
                    indx: 7,
                  ))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                '  این برنامه به درد چه کسانی میخورد؟',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
              ),
              Icon(Icons.people,size: 30,),
            ],
          ),
        ),
        FlatButton(
          padding: const EdgeInsets.symmetric(vertical: 20),
          splashColor: Colors.green,
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => DietDetails(
                    indx: 8,
                  ))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                '  درباره ی برنامه',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
              ),
              Icon(Icons.fitness_center,size: 30,),
            ],
          ),
        ),
        FlatButton(
          padding: const EdgeInsets.symmetric(vertical: 20),
          splashColor: Colors.green,
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => DietDetails(
                    indx: 9,
                  ))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                '  درباره ی ما',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
              ),
              Icon(Icons.info_outline,size: 30,),
            ],
          ),
        ),
        FlatButton(
          padding: const EdgeInsets.symmetric(vertical: 20),
          splashColor: Colors.green,
          onPressed: () {
            _launchURL();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                '  تماس با پشتیبانی',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
              ),
              Icon(Icons.call,size: 30,),
            ],
          ),
        ),
        FlatButton(
          padding: const EdgeInsets.symmetric(vertical: 20),
          splashColor: Colors.green,
          onPressed: () {
            share();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                '   اشتراک گذاری با دوستان',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
              ),
              Icon(Icons.share,size: 30,),
            ],
          ),
        ),
        Container(color: Colors.black26,height:0.5,width:280,),
        Align(
                  alignment: Alignment(-1, 1),
                    child: Image.asset(
                      'asset/images/1.png',
                  )),
      ],
    ),);
  }
}
