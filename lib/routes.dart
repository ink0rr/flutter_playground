import 'package:flutter/material.dart';
import 'package:flutter_playground/screen/home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
};
