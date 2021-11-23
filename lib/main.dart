import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_playground/routes.dart';
import 'package:flutter_playground/screen/home/home_screen.dart';
import 'package:flutter_playground/themes.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(systemStyle());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
