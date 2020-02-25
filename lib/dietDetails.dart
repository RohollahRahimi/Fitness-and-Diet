import 'package:fitness/apBar.dart';
import 'package:fitness/bodybuilding.dart';
import 'package:flutter/material.dart';

class DietDetails extends StatelessWidget {
  BodyBuilding bodyBuilding = new BodyBuilding();
  final int indx;
  DietDetails({this.indx = 0});
  List dietTimes = [
    'سرخ کردنی حذف گردد.\n'
        'سس مایونز حذف گردد.\n'
        'ماکارونی حذف گردد.\n'
        'روغن مایع و جامد حذف شود یا بسیار کم استفاده شود.\n'
        ' در عوض میتوانید از روغن کنجد یا روغن زیتون استفاده کنید.\n'
        'شکر و قند حذف گردد یا بسیار کم استفاده شود. '
        'در عوض میتوانید از خرما و کشمش استفاده کنید.\n',
    'صبحانه :\n'
        ' 3 عدد سفیده تخم مرغ\n 3 عدد خرما \n 1 لیوان شیر کم چرب'
        ' \n 1 قاشق عسل\n نان سنگگ \n پنیر کم چرب\n',
    'ساعت 10 صبح:\n'
        ' 1 عدد موز یا کیک پایه سیب\n 3 عدد خرما\n300 گرم سینه مرغ کباب شده\n',
    'ناهار:\n '
        'ماهی کباب\n400 گرم برنج \n 2 سیخ کباب سینه مرغ \n',
    'قبل از تمرین:\n'
        ' 1 عدد موز\n3 عدد خرما\n 1 عدد سیب زمینی تنوری\n',
    'بعد از تمرین:\n'
        ' 3 عدد سفیده تخم مرغ\n 3 عدد خرما\n 3 تیکه سینه مرغ کباب شده \n',
    'شام:\n'
        ' 300 گرم گوشت گوساله\n 300 گرم برنج \n نان سنگگ به همراه سالاد فصل \n سیب و میوه',
        'این برنامه مناسب همه ی افراد دارای اضافه وزن و شکم دار'
        ' هستند که بین 3 تا 20 کیلو اضافه وزن دارند.\n'
        'این برنامه در واقع یکی از کامل ترین و جامع ترین برنامه های بدنسازی هست که میتواند '
        'در عرض دوماه شمارا به وزن و بدن ایده آل تان برساند.\n'
        'توجه داشته باشید که هرچه اضافه وزن شما بیشتر و به عدد 20 نزدیک تر هست، سعی کنید  '
        'همه ی حرکات را درست و کامل انجام دهید و حرکات مربوط به شکم را نیز هرروز تکرار کنید '
        'تا به نتیجه ی دلخواه تان برسید.',
        ' این برنامه ی بدنسازی و برنامه ی غذایی کاملا اصولی و جامع بوده و توسط یکی از برترین '
        'بدنسازان کشور وقهرمان مسابقات زیبایی اندام کشور نوشته شده است.\n'
        ' با توجه به معضل چاقی و اضافه وزن و در پی آن مشکلات و مریضی هایی که به وجود می آید، وظیفه خود دانستیم '
        'که این برنامه را نوشته و به صورت کاملاً رایگان در خدمت هموطنان عزیز قرار دهیم تا کمکی به این معضل کرده باشیم.',
        'تیم برنامه نویسی آسا: \n'
        'متخصص برنامه نویسی اپلیکیشن های موبایل برای سیستم عامل های \n Android \n iOS \n'
        ' برای انجام پروژه های موبایلی خود میتوانید از قسمت تماس با پشتیبانی ازطریق تلگرام با ما ارتباط برقرارکنید'
        'و یا به ایمیل زیر پیام بفرستید\n'
        ' rohollahrahimi@gmail.com'
  ];
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
                SizedBox(height: 230),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      dietTimes[indx],
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold,height: 1.6),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 215,
          child: CustomPaint(
            painter: ThirdCurvedPainter(),
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
