import 'package:fitness/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
   WidgetsFlutterBinding.ensureInitialized();
   SystemChrome.setPreferredOrientations([
     DeviceOrientation.portraitUp
   ]).then((_){
     runApp(new MyApp());
   });
}

class MyApp extends StatelessWidget {
  final ThemeData theme = ThemeData(
    fontFamily: "Farsi",
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: Splash(),
    );
  }
}
