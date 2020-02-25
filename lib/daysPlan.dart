import 'dart:ui';

import 'package:fitness/apBar.dart';
import 'package:flutter/material.dart';

class DaysPlan extends StatelessWidget {
  final List daysplan = [
    '1- پرس سینه دمبل + وزن آزاد\n'
        'چهار ست، هرست 8 بار تکرار\n\n'
        '2- پرس بالاسینه هالتر\n'
        'سه ست، هرست 9 بار تکرار\n\n'
        '3- پرس زیرسینه دمبل \n'
        'چهارست، هرست 7 بار تکرار\n\n'
        '4- قفسه پروانه \n'
        'سه ست، هرست 12 بار تکرار\n\n'
        '5- پشت بازو دمبل جفت خوابیده\n + سیم کش جفت\n'
        'چهارست، هرست 7 بار تکرار\n\n'
        '6- پشت بازو هالترپرس\n'
        'سه ست، هرست 9 بار تکرار\n\n'
        '7- پشت بازو سیم کش تک معکوس\n'
        'چهارست، هرست 7 بار تکرار\n\n'
        '8- پشت بازو طناب از بالا\n'
        'چهارست، هرست 7 بار تکرار\n\n',
    '1- سرشانه هالتر ازپشت\n'
        'چهارست، هرست 7 بار تکرار\n\n'
        '2- نشرجانب دمبل جفت ایستاده\n'
        'سه ست، هرست 8 بار تکرار\n\n'
        '3- نشر سیم کش تک + دمبل تک \n'
        'چهارست، هرست 7 بار تکرار\n\n'
        '4- سرشانه از جلو اسمیت \n'
        'سه ست، هرست 10 بار تکرار\n\n'
        '5- لیفت هالتر\n'
        'سه ست، هرست 8 بار تکرار\n\n'
        '6- جلوبازو هالتر لاری\n'
        'چهارست، هرست 7 بار تکرار\n\n'
        '7- جلوبازو دمبل متوالی + سیم کش جفت \n'
        'سه ست هرست 10 بار تکرار\n\n'
        '8- جلوبازو هالتر خشابی\n'
        'چهارست، هرست 8 بار تکرار\n\n'
        '9- جلوبازو سیم کش جفت از پایین \n'
        'چهارست، هرست 7 بار تکرار\n\n'
        '10- ساعد\n'
        'سه ست، هرست 15 بار تکرار\n\n',
    '1- زیربغل آویز از پشت \n'
        'چهارست، هرست 8 بار تکرار\n\n'
        '2- زیربغل هالتر خم دست معکوس\n'
        'سه ست، هرست 9 بار تکرار\n\n'
        '3- زیربغل دمبل تک خم\n'
        'چهارست، هرست 7 بار تکرار\n\n'
        '4- زیربغل سیم کش تک قایقی\n'
        'چهارست، هرست 7 بار تکرار\n\n'
        '5- زیربغل پلاور دمبل \n'
        'سه ست، هرست 8 بار تکرار\n\n'
        '6- زیربغل تی بار دست جمع\n'
        'سه ست هرست 7 بار تکرار\n\n'
        '7- خلبانی + دستگاه \n'
        'چهارست، هرست 20 بار تکرار\n\n'
        '8- مسگری 20 دقیقه',
    '1- اسکات هالتر\n'
        'سه ست، هرست 8 بار تکرار\n\n'
        '2- پاپهن دمبل\n'
        'چهارست، هرست 7 بار تکرار\n\n'
        '3- پرس پا دستگاه \n'
        'سه ست، هرست 10 بار تکرار\n\n'
        '4- هاگ پا ماشین\n'
        'چهارست، هرست 7 بار تکرار\n\n'
        '5- لانگز اسمیت\n'
        'چهارست، هرست 10 بار تکرار\n\n'
        '6- ددلیفت هالتر\n'
        'سه ست، هرست 9 بار تکرار\n\n'
        '7- پشت پا ماشین\n'
        'چهارست، هرست 7 بار تکرار\n\n'
        '8- ساق پا دستگاه\n'
        'سه ست، هرست 15 بار تکرار\n\n',
    'حرکات مربوط به شکم: \n'
        '1- شکم خلبانی + میز\n'
        '2- دستگاه \n'
        '3- مسگری 10 دقیقه\n'
        '4- هالتر پهلو\n\n'
        'حرکات شکم را میتوانید هرروز یا یک روز\n'
        'درمیان با توجه به توان بدنی خود تکرار کنید',
    'استراحت\n'
  ];
  final int index;
  DaysPlan({this.index = 0});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(top:170),
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                'asset/images/2.png',
              ),
            )),
        Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 180),
                Center(
                    child: Text(
                  daysplan[index],
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,height: 1.6),
                  textDirection: TextDirection.rtl,
                )),
              ],
            ),
          ),
        ),
        Container(
          height: 195,
          width: double.infinity,
          child: CustomPaint(
            painter: CurvedPainter(),
          ),
        ),
        Positioned(
          left: 20,
          top: 30,
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
            color: Colors.white,
            iconSize: 35,
          ),
        ),
      ],
    ));
  }
}
