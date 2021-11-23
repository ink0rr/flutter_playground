import 'package:flutter/material.dart';
import 'package:flutter_playground/screens/home/home_screen.dart';
import 'package:flutter_playground/screens/product_detail/product_detail_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  ProductDetailScreen.routeName: (context) => const ProductDetailScreen(),
};
