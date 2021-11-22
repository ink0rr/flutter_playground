import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_playground/screen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle style = SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    );
    SystemChrome.setSystemUIOverlayStyle(style);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: Colors.white,
        primarySwatch: Colors.grey,
        textTheme: GoogleFonts.notoSansTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}
