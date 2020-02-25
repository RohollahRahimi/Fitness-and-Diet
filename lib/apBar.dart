import 'package:flutter/material.dart';

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.red[600];

    var path = Path();
    path.moveTo(0.0, size.height*1.2 );
    path.quadraticBezierTo(size.width * 0.3, size.height * 0.4,
        size.width * 0.5, size.height * 0.72);
    path.quadraticBezierTo(size.width * 0.76, size.height * 1.08,
        size.width * 0.98, size.height * 0.24);
    path.lineTo(size.width * 1.04, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CurvedPainter oldDelegate) => true;
}

class SecondCurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.orange;

    var path = Path();
    path.moveTo(0.0, size.height );
    path.quadraticBezierTo(size.width * 0.3, size.height * 0.25,
        size.width * 0.56, size.height * 0.71);
    path.quadraticBezierTo(size.width * 0.73, size.height*0.95 ,
        size.width * 0.9, size.height * 0.43);
    path.lineTo(size.width * 1.02, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(SecondCurvedPainter oldDelegate) => true;
}

class ThirdCurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.purple;

    var path = Path();
    path.moveTo(0.0, size.height * 1.2);
    path.quadraticBezierTo(size.width * 0.3, size.height * 0.5,
        size.width * 0.48, size.height * 0.69);
    path.quadraticBezierTo(size.width * 0.78, size.height * 0.96,
        size.width * 0.98, size.height * 0.27);
    path.lineTo(size.width * 1.06, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(ThirdCurvedPainter oldDelegate) => true;
}
