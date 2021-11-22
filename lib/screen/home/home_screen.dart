import 'package:flutter/material.dart';
import 'package:flutter_playground/widget/my_bottom_nav_bar.dart';

import 'widgets/banner_widget.dart';
import 'widgets/catalogue_widget.dart';
import 'widgets/category_widget.dart';
import 'widgets/search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: const [
                SizedBox(height: 32),
                SearchWidget(),
                SizedBox(height: 24),
                BannerWidget(),
                SizedBox(height: 16),
                CategoryWidget(),
                SizedBox(),
                CatalogueWidget(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
